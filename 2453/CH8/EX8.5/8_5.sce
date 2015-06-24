//To calculate the resistance
ni = 2.5*10^19;      //intrinsic carrier density, per m^3
mew_e = 0.39;      //electron mobility, m^2/Vs
mew_h = 0.19;      //hole mobility, m^2/Vs
e = 1.6*10^-19;
sigma_i = ni*e*(mew_e+mew_h);      //conductivity, ohm-1 m-1
w = 1;     //width, mm
w = w*10^-3;       //width, m
t = 1;     //thickness, mm
t = t*10^-3;     //thickness, m
A = w*t;      //area, m^2
l = 1;     //length, cm
l = l*10^-2;     //length, m
R = l/(sigma_i*A);      //resistivity, ohm m
printf("resistance of intrinsic Ge rod is %5.1f ohm",R);
