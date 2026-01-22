<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" version="1.1.0" xmlns:ogc="http://www.opengis.net/ogc" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd" xmlns:se="http://www.opengis.net/se" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xlink="http://www.w3.org/1999/xlink">
  <NamedLayer>
    <se:Name>Densité (hab/km²)</se:Name>
    <UserStyle>
      <se:Name>Densité (hab/km²)</se:Name>
      <se:FeatureTypeStyle>
        <se:Rule>
          <se:Name>2000 - 12000</se:Name>
          <se:Description>
            <se:Title>2000 - 12000</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>densite</ogc:PropertyName>
                <ogc:Literal>1835</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>densite</ogc:PropertyName>
                <ogc:Literal>11800.6000000000003638</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <se:PolygonSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <se:Fill>
              <se:SvgParameter name="fill">#fafafa</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#383838</se:SvgParameter>
              <se:SvgParameter name="stroke-width">18.39999999999999858</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>12000 - 19000</se:Name>
          <se:Description>
            <se:Title>12000 - 19000</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:And>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>densite</ogc:PropertyName>
                <ogc:Literal>11800.6000000000003638</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>densite</ogc:PropertyName>
                <ogc:Literal>19194</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <se:PolygonSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <se:Fill>
              <se:SvgParameter name="fill">#d8c1c1</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#383838</se:SvgParameter>
              <se:SvgParameter name="stroke-width">18.39999999999999858</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>19000 - 27000</se:Name>
          <se:Description>
            <se:Title>19000 - 27000</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:And>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>densite</ogc:PropertyName>
                <ogc:Literal>19194</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>densite</ogc:PropertyName>
                <ogc:Literal>27163.39999999999781721</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <se:PolygonSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <se:Fill>
              <se:SvgParameter name="fill">#b68787</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#383838</se:SvgParameter>
              <se:SvgParameter name="stroke-width">18.39999999999999858</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>27000 - 31000</se:Name>
          <se:Description>
            <se:Title>27000 - 31000</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:And>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>densite</ogc:PropertyName>
                <ogc:Literal>27163.39999999999781721</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>densite</ogc:PropertyName>
                <ogc:Literal>31407</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <se:PolygonSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <se:Fill>
              <se:SvgParameter name="fill">#944e4e</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#383838</se:SvgParameter>
              <se:SvgParameter name="stroke-width">18.39999999999999858</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>31000 - 44000</se:Name>
          <se:Description>
            <se:Title>31000 - 44000</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:And>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>densite</ogc:PropertyName>
                <ogc:Literal>31407</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>densite</ogc:PropertyName>
                <ogc:Literal>43932</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <se:PolygonSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <se:Fill>
              <se:SvgParameter name="fill">#721515</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#383838</se:SvgParameter>
              <se:SvgParameter name="stroke-width">18.39999999999999858</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
        </se:Rule>
      </se:FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
