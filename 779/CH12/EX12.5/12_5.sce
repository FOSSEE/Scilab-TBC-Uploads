h1 = 3230.9; s1 = 6.9212; s2 = s1; s3 = s1;
h2 = 2796; sf = 0.6493; sfg = 7.5009;
x3 = (s3-sf)/sfg;
h3 = 191.83 + x3*2392.8;
h4 = 191.83; h5 = h4;
h6 = 640.23; h7 = h6;
m = (h6-h5)/(h2-h5);
Wt = (h1-h2)+(1-m)*(h2-h3);
Q1 = h1-h6;
n_cycle = 100*Wt/Q1;
sr = 3600/Wt;
s7 = 1.8607; s4 = 0.6493;
Tm = (h1-h7)/(s1-s7);
Tm1 = (h1-h4)/(s1-s4); // With out regeneration
dT = Tm-Tm1;
Wt_ = h1-h3;
sr_ = 3600/Wt_;
dsr = sr-sr_;
n_cycle_ = 100*(h1-h3)/(h1-h4);
dn = n_cycle-n_cycle_;
disp("%",n_cycle,"Efficiency of the cycle is ")
disp("kg/kW h",sr,"Steam rate of the cycle is")
disp("degree centigrade",dT,"Increase in temperature due to regeneration is")
disp("kg/kW h",dsr,"Increase in steam rate due to regeneration is")
disp("%",dn,"Increase in Efficiency of the cycle due to regeneration is")

