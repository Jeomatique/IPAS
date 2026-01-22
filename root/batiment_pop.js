// ========== batiment_pop.js ==========
function batiment_pop(feature) {
  const val = feature.properties['class_pop'];

  if (val === '0') {
    return {
      "fillColor": "#b5b5b5",
      "fillOpacity": 1.0,
      "color": "#383838",
      "weight": 0.5,
      "opacity": 0.5
    };
  }
  else if (val === '1 - 6') {
    return {
      "fillColor": "#fff691",
      "fillOpacity": 1.0,
      "color": "#383838",
      "weight": 0.5,
      "opacity": 0.5
    };
  }
  else if (val === '6 - 12') {
    return {
      "fillColor": "#ffe18d",
      "fillOpacity": 1.0,
      "color": "#383838",
      "weight": 0.5,
      "opacity": 0.5
    };
  }
  else if (val === '12 - 19') {
    return {
      "fillColor": "#fbc07d",
      "fillOpacity": 1.0,
      "color": "#383838",
      "weight": 0.5,
      "opacity": 0.5
    };
  }
  else if (val === '19 - 27') {
    return {
      "fillColor": "#f0a469",
      "fillOpacity": 1.0,
      "color": "#383838",
      "weight": 0.5,
      "opacity": 0.5
    };
  }
  else if (val === '27 - 43') {
    return {
      "fillColor": "#cc6c46",
      "fillOpacity": 1.0,
      "color": "#383838",
      "weight": 0.5,
      "opacity": 0.5
    };
  }
  else if (val === '43 - 3769') {
    return {
      "fillColor": "#970007",
      "fillOpacity": 1.0,
      "color": "#383838",
      "weight": 0.5,
      "opacity": 0.5
    };
  }

  // Style par défaut si aucune classe ne correspond
  return {
    fillColor: '#cccccc',
    fillOpacity: 0.7,
    color: '#000000',
    weight: 1,
    opacity: 1
  };
}