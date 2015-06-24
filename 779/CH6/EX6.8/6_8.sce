T1 = 363;
T2 = 293;
W = 1; // Kj/s
e_max = 1-(T2/T1);
Qmin = W/e_max ;
Qmin_ = Qmin*3600;
E = 1880; // in kJ/m2 h
Amin = Qmin_/E ;
disp("m2",Amin,"Minimum area required for the collector plate")
