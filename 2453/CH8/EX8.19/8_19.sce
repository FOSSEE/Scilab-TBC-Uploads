//To calculate the value of mew and n
RH = 3.66*10^-4;      //Hall coefficient, m^3/C
e = 1.6*10^-19;
n = 1/(RH*e);
rho_n = 8.93*10^-3;     //resistivity, ohm m
printf("value of n per m^3 is");
disp(n);
mew_e = RH/rho_n;
printf("value of mew_e is %5.3f m^2/Vs",mew_e);
