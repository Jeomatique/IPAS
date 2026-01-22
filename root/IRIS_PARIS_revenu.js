function IRIS_PARIS_revenu(feature) {
  if (feature.properties['MED21'] >= 0 && feature.properties['MED21'] <= 15342.80000000000109139) {
    return {
          "fillColor": "#f6f6f6",
          "fillOpacity": 1.0
    };
  }
  else if (feature.properties['MED21'] > 15342.80000000000109139 && feature.properties['MED21'] <= 29674.80000000000291038) {
    return {
          "fillColor": "#b9e1e5",
          "fillOpacity": 1.0
    };
  }
  else if (feature.properties['MED21'] > 29674.80000000000291038 && feature.properties['MED21'] <= 37431.19999999999708962) {
    return {
          "fillColor": "#7bccd4",
          "fillOpacity": 1.0
    };
  }
  else if (feature.properties['MED21'] > 37431.19999999999708962 && feature.properties['MED21'] <= 45465.80000000000291038) {
    return {
          "fillColor": "#3eb7c4",
          "fillOpacity": 1.0
    };
  }
  else if (feature.properties['MED21'] > 45465.80000000000291038 && feature.properties['MED21'] <= 124575) {
    return {
          "fillColor": "#00a1b3",
          "fillOpacity": 1.0
    };
  }
  return {
    fillColor: '#cccccc',
    fillOpacity: 0.7,
    color: '#000000',
    weight: 1,
    opacity: 1
  };
}
