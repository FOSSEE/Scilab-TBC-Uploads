// At T = 40 degree
Psat = 7.384e06;
sf = 0.5725; sfg = 7.6845;
hf = 167.57; hfg = 2406.7;
//
s1 = 6.9189; h1 = 3037.6;
x2 = (s1-sf)/sfg ;
h2 = hf+(x2*hfg);
W = h1-h2;
disp("kJ/Kg",W,"The ideal work output of the turbine is")