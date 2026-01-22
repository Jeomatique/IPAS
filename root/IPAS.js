function IPAS(feature) {
  if (feature.properties['class_et'] === '< -1') {
    return {
          "fillColor": "#900002",
          "fillOpacity": 1.0
    };
  }
  else if (feature.properties['class_et'] === '-1 - -0.5') {
    return {
          "fillColor": "#b94d43",
          "fillOpacity": 1.0
    };
  }
  else if (feature.properties['class_et'] === '-0.5 - 0') {
    return {
          "fillColor": "#f8d664",
          "fillOpacity": 1.0
    };
  }
  else if (feature.properties['class_et'] === '0 - 0.5') {
    return {
          "fillColor": "#95e774",
          "fillOpacity": 1.0
    };
  }
  else if (feature.properties['class_et'] === '0.5 - 1') {
    return {
          "fillColor": "#58ddd6",
          "fillOpacity": 1.0
    };
  }
  else if (feature.properties['class_et'] === '>= 1') {
    return {
          "fillColor": "#1b84d4",
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
