Tm = 1535; // Melting point of iron on degree
Ti = 15; // Initial temperature
Tf = 1650; // Final temperature
Lh = 270e03; // Latent heat of iron in J/Kg
ml = 29.93; // Atomic weight of iron in liquid state
m = 56; // Atomoc weight of iron
sh = 0.502e03; // Specific heat of iron in J/Kg
d = 6900; // Density of molten metal in kg/m3
H = (Tm-Ti)*sh + Lh + (ml/m)*(Tf-Tm)*1000; // Heat required
Mr = 5e03; // Melting rate in Kg/h
Hr = H*Mr ; // Rate of heat suppy
HrA = Hr/(0.7*3600) // Actual rate of heat supply
disp("W",HrA,"Rating of furnace would be")
V = (3*Mr)/d; // Volume required in m3
d = ((V/2)*(4/%pi))*(1/3); // Diameter of cylinder of furnace in m
l = 2*d; // Length of cylinder of furnace in m
disp("m",l," Length of cylinder of furnace is")