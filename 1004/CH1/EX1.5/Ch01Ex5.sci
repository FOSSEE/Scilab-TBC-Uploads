// Scilab Code Ex1.5 Mass-Energy Equivalence: Pg: 22 (2008)
U = 7.5e+011;    // Total electrical energy generated in a country, kWh
kWh = 1000*3600;    // Conversion factor for kilowatt-hour into joule, J/kWh
c = 3e+08;    // Speed of light, m/s
m = (U*kWh)/c^2;    // Mass equivalent of energy, kg
printf("\nThe mass converted into energy = %2d kg", m);
// Result 
// The mass converted into energy = 30 kg 