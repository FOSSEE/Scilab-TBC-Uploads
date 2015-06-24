h1 = 3023.5; s1 = 6.7664; s2 = s1; s3 = s1; s4 = s1;
t_sat_20 = 212;
t_sat_1 = 46;
dt = t_sat_20-t_sat_1;
n =3; // number of heaters
t = dt/n;
t1 = t_sat_20-t;
t2 = t1-t;
// 0.1 bar
hf = 191.83; hfg = 2392.8; sf = 0.6493;
sg = 8.1502;
// At 100 degree
hf100 = 419.04; hfg100 = 2257.0; sf100 = 1.3069; sg100 = 7.3549;
// At 150 degree
hf150 = 632.20; hfg150 = 2114.3; sf150 = 1.8418; sg150 = 6.8379;
x2 = (s1-sf150)/4.9961;
h2 = hf150+(x2*hfg150);
x3 = (s1-sf100)/6.0480;
h3 = hf100+(x3*hfg100);
x4 = (s1-sf)/7.5010;
h4 = hf+(x4*hfg);
h5 = hf; h6 = h5;
h7 = hf100; h8 = h7;
h9 = 632.2; h10 = h9;
m1 = (h9-h7)/(h2-h7);
m2 = ((1-m1)*(h7-h6))/(h3-h6);
Wt = 1*(h1-h2)+(1-m1)*(h2-h3)+(1-m1-m2)*(h3-h4);
Q1 = h1-h9;
Wp = 0 ; // Pump work is neglected
n_cycle = 100*(Wt-Wp)/Q1;
sr = 3600/(Wt-Wp); 
disp("kJ/kg",Wt,"Net work per kg os stem is")
disp("%",n_cycle,"Cycle efficiency is")
disp("kg/kW h",sr,"Stream rate is")
