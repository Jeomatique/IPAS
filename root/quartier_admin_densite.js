function quartier_admin_densite(feature) {
  if (feature.properties['densite'] >= 1835 && feature.properties['densite'] <= 11800.6000000000003638) {
    return {
          "fillColor": "#fafafa",
          "fillOpacity": 1.0,
          "color": "#383838",
          "weight": 2.0,
          "opacity": 1.0
    };
  }
  else if (feature.properties['densite'] > 11800.6000000000003638 && feature.properties['densite'] <= 19194) {
    return {
          "fillColor": "#d8c1c1",
          "fillOpacity": 1.0,
          "color": "#383838",
          "weight": 2.0,
          "opacity": 1.0
    };
  }
  else if (feature.properties['densite'] > 19194 && feature.properties['densite'] <= 27163.39999999999781721) {
    return {
          "fillColor": "#b68787",
          "fillOpacity": 1.0,
          "color": "#383838",
          "weight": 2.0,
          "opacity": 1.0
    };
  }
  else if (feature.properties['densite'] > 27163.39999999999781721 && feature.properties['densite'] <= 31407) {
    return {
          "fillColor": "#944e4e",
          "fillOpacity": 1.0,
          "color": "#383838",
          "weight": 2.0,
          "opacity": 1.0
    };
  }
  else if (feature.properties['densite'] > 31407 && feature.properties['densite'] <= 43932) {
    return {
          "fillColor": "#721515",
          "fillOpacity": 1.0,
          "color": "#383838",
          "weight": 2.0,
          "opacity": 1.0
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

