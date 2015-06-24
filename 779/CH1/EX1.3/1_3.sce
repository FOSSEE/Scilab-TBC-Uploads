z = 0.760; // Barometer reading in m
// Part (a)
h1 = 40e-02; // Mercury height in vaccume in m
d_r = 13.6e03; // Density of mercury in kg/m3
g = 9.80; // Acceleration due to gravity in m/s2
Patm = z*d_r*g; // Atmospheric pressure in Pas
Pv = h1*d_r*g; // Pressue in vaccume in Pa
Pabs = Patm-Pv; // Absolute pressure in Pa
disp("Pa",Pabs," 40cmHg vaccume is")
// Part (b)
h2 = 90e-02; // Mercury height in gauge in m
Pg = h2*d_r*g; // Gauge Pressure in Pa
Pabs1 = Patm + Pg ; // Absolute pressure in Pa
disp("Pa",Pabs1,"90cmHg gauge is")
// Part(c)
d_w = 1e03 ; // Density of water in kg/m3
h3 = 1.2 ; // Gauge Pressure water height in m
Pga = d_w*h3*g; // Gauge Pressure in Pa
Pabs3 = Patm + Pga ; // Absolute pressure in Pa
disp("Pa",Pabs3,"1.2 m H2O gauge is")
