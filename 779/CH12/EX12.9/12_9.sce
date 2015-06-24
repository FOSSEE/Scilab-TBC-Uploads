hfg = 2202.6;
Qh = 5.83;
ws = Qh/hfg;
eg = 0.9; // efficiency of generator
P = 1000;
Wnet = 1000/0.9;
nbrake = 0.8;
h1_2s = Wnet/(ws*nbrake); // h1-h2s
n_internal = 0.85;
h12 = n_internal*h1_2s;
hg = 2706.3; h2 = hg;
h1 = h12+h2;
h2s = h1-h1_2s;
hf = 503.71;
x2s = (h2s-hf)/hfg;
sf = 1.5276; sfg = 5.6020;
s2s = sf+(x2s*sfg);
s1 = s2s;
P1 = 22.5; // in bar from Moiller chart
t1 = 360;
disp("degree",t1,"Temperature of the steam is")
disp("bar",P1,"Pressure of the steam is ")