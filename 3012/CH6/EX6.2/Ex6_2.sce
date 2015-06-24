// Given:-
// Assumptions:

// From table A-2 at 100 degree celcius
ug = 2506.5                                  // in kj/kg
uf = 418.94                                  // in kj/kg
sg = 7.3549
sf = 1.3069


// Calculations:-
// From energy balance
W = -(ug-uf)
// From entropy balance
sigmabym = (sg-sf)

// Results
printf( ' The net work per unit mass is %.2f KJ/kg. ',W)
printf( ' The amount of entropy produced per unit mass is %.2f KJ/kg.',sigmabym)
