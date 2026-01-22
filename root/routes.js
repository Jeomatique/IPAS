function routes(feature) {
  if (feature.properties['IMPORTANCE'] === '2' || feature.properties['IMPORTANCE'] === '3') {
    return {
          "color": "#6e6e6e",
          "weight": 1.0,
          "opacity": 1.0
    };
  }
  else if (feature.properties['IMPORTANCE'] === '4') {
    return {
          "color": "#000000",
          "weight": 2.0,
          "opacity": 1.0
    };
  }
  else if (feature.properties['IMPORTANCE'] === '5' || feature.properties['IMPORTANCE'] === '6') {
    return {
          "color": "#a0a0a0",
          "weight": 1.0,
          "opacity": 1.0
    };
  }
  else if (feature.properties['layer'] === '2') {
    return {
          "color": "#000000",
          "weight": 6.0,
          "opacity": 1.0
    };
  }
  return {
    color: '#999999',
    weight: 0.5,
    opacity: 0.5
  };
}
