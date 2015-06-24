//To calculate the free electron concentration, mobility and drift velocity
R = 0.06;      //resistance, ohm
D = 5;      //length of Al wire, m
e = 1.602*10^-19;
rho = 2.7*10^-8;     //resistivity of Al, ohm-m
MA = 26.98;     //atomic weight
NA = 6.025*10^26;     //avagadro number, k/mol
rho_s = 2.7*10^3;     //density, kg/m^3
n = 3*rho_s*NA/MA;     //free electron concentration, electrons/m^3
printf("free electron concentration in electrons/m^3 is");
disp(n);
mew = 1/(n*e*rho);     //mobility, m/Vs
printf("mobility is %f m/Vs",mew);
I = 15;     //current, A
E = I*R/D;      //electric field, V/m
vd = mew*E;     //drift velocity, m/s
printf("drift velocity is %f m/s",vd);
