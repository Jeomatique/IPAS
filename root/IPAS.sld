<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Leaflet minimal EPSG:2154</title>
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" />
    <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>
    <!-- Proj4 + Proj4Leaflet -->
    <script src="https://unpkg.com/proj4@2.9.1/dist/proj4.js"></script>
    <script src="https://unpkg.com/proj4leaflet@1.0.2/src/proj4leaflet.js"></script>
    <style>
        html, body {
            height: 100%;
            margin: 0;
        }

        #map {
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
        }

        .leaflet-control-coords {
            background: white;
            padding: 2px 6px;
            font: 12px monospace;
        }

        .legend {
            background: rgba(255, 255, 255, 0.9);
            padding: 8px;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0,0,0,0.3);
            line-height: 1.4;
        }

        .legend h4 {
            margin: 0 0 5px;
            font-size: 1em;
            color: #333;
        }

        .legend img {
            vertical-align: middle;
            margin-right: 5px;
        }
    </style>
</head>
<body>
    <div id="map"></div>
    <script>
        /* Définition EPSG:2154 */
        const lambert93 = new L.Proj.CRS(
            'EPSG:2154',
            '+proj=lcc +lat_1=49 +lat_2=44 +lat_0=46.5 +lon_0=3 ' +
            '+x_0=700000 +y_0=6600000 +ellps=GRS80 +units=m +no_defs'
        );

        function wmsLayer(layerName, styleName) {
            return L.tileLayer.wms(
                "http://localhost:8080/geoserver/IPAS/wms",
                {
                    layers: layerName,
                    styles: styleName,
                    format: "image/png",
                    transparent: true,
                    version: "1.3.0",
                    attribution: "GeoServer IPAS"
                }
            );
        }

        const overlays = {
            "Revenus (IRIS Paris)": wmsLayer(
                "IPAS:IRIS_PARIS_revenu",
                "IPAS:IRIS_PARIS_revenu"
            ),
            "Seine": wmsLayer(
                "IPAS:Seine",
                "IPAS:Seine"
            ),
            "Bâtiments population": wmsLayer(
                "IPAS:batiment_pop",
                "IPAS:batiment_pop"
            ),
            "Parcs": wmsLayer(
                "IPAS:parcs",
                "IPAS:parcs"
            ),
            "Densité quartiers admin": wmsLayer(
                "IPAS:quartier_admin_densite",
                "IPAS:quartier_admin_densite"
            ),
            "Routes": wmsLayer(
                "IPAS:routes",
                "IPAS:routes"
            ),
            "IPAS": wmsLayer(
                "IPAS:IPAS",
                "IPAS:IPAS"
            )
        };

        /* Carte */
        const map = L.map('map').setView([48.857, 2.341], 12);

        /* Fonds de carte */
        const baseLayers = {
            "OpenStreetMap": L.tileLayer(
                'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                {
                    maxZoom: 19,
                    attribution: '© OpenStreetMap contributors'
                }
            ),
            "ESRI Imagerie": L.tileLayer(
                'https://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/tile/{z}/{y}/{x}',
                {
                    attribution: 'Tiles © Esri'
                }
            ),
            "ESRI Gris": L.tileLayer(
                'https://server.arcgisonline.com/ArcGIS/rest/services/Canvas/World_Light_Gray_Base/MapServer/tile/{z}/{y}/{x}',
                {
                    maxZoom: 16,
                    attribution: 'Tiles © Esri'
                }
            )
        };

        /* Fond par défaut */
        baseLayers["OpenStreetMap"].addTo(map);

        /* Échelle métrique */
        L.control.scale({ position: 'bottomleft' }).addTo(map);

        /* Contrôle coordonnées EPSG:2154 */
        const coords = L.control({ position: 'bottomright' });

        coords.onAdd = function () {
            this._div = L.DomUtil.create('div', 'leaflet-control-coords');
            map.on('mousemove', e => {
                const p = lambert93.project(e.latlng);
                this._div.innerHTML =
                    `X ${p.x.toFixed(0)} m<br>Y ${p.y.toFixed(0)} m`;
            });
            return this._div;
        };

        coords.addTo(map);

        /* Légende */
        const legend = L.control({ position: "topleft" });

        legend.onAdd = function(map) {
            const div = L.DomUtil.create("div", "legend");
            div.innerHTML = "<h4>Légende</h4>";
            div.innerHTML += "<img src='http://localhost:8080/geoserver/IPAS/wms?REQUEST=GetLegendGraphic&VERSION=1.0.0&FORMAT=image/png&LAYER=IPAS:IRIS_PARIS_revenu&STYLE=IPAS:IRIS_PARIS_revenu&WIDTH=20&HEIGHT=20' alt='Revenus' /> Revenus (IRIS Paris)<br>";
            div.innerHTML += "<img src='http://localhost:8080/geoserver/IPAS/wms?REQUEST=GetLegendGraphic&VERSION=1.0.0&FORMAT=image/png&LAYER=IPAS:Seine&STYLE=IPAS:Seine&WIDTH=20&HEIGHT=20' alt='Seine' /> Seine<br>";
            div.innerHTML += "<img src='http://localhost:8080/geoserver/IPAS/wms?REQUEST=GetLegendGraphic&VERSION=1.0.0&FORMAT=image/png&LAYER=IPAS:batiment_pop&STYLE=IPAS:batiment_pop&WIDTH=20&HEIGHT=20' alt='Bâtiments' /> Bâtiments population<br>";
            div.innerHTML += "<img src='http://localhost:8080/geoserver/IPAS/wms?REQUEST=GetLegendGraphic&VERSION=1.0.0&FORMAT=image/png&LAYER=IPAS:parcs&STYLE=IPAS:parcs&WIDTH=20&HEIGHT=20' alt='Parcs' /> Parcs<br>";
            div.innerHTML += "<img src='http://localhost:8080/geoserver/IPAS/wms?REQUEST=GetLegendGraphic&VERSION=1.0.0&FORMAT=image/png&LAYER=IPAS:quartier_admin_densite&STYLE=IPAS:quartier_admin_densite&WIDTH=20&HEIGHT=20' alt='Densité' /> Densité quartiers admin<br>";
            div.innerHTML += "<img src='http://localhost:8080/geoserver/IPAS/wms?REQUEST=GetLegendGraphic&VERSION=1.0.0&FORMAT=image/png&LAYER=IPAS:routes&STYLE=IPAS:routes&WIDTH=20&HEIGHT=20' alt='Routes' /> Routes<br>";
            div.innerHTML += "<img src='http://localhost:8080/geoserver/IPAS/wms?REQUEST=GetLegendGraphic&VERSION=1.0.0&FORMAT=image/png&LAYER=IPAS:IPAS&STYLE=IPAS:IPAS&WIDTH=20&HEIGHT=20' alt='IPAS' /> IPAS";
            return div;
        };

        legend.addTo(map);

        /* Contrôle des couches */
        L.control.layers(
            baseLayers,
            overlays,
            {
                position: 'topright',
                collapsed: false
            }
        ).addTo(map);

        /* Ajouter la Seine par défaut */
        overlays["Seine"].addTo(map);
    </script>
</body>
</html>
