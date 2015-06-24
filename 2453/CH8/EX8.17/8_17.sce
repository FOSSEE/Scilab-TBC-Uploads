//To calculate the density and mobility of charge carriers
RH = -7.35*10^-5;      //Hall coefficient, m^3/C
e = 1.6*10^-19;
sigma = 200;      //conductivity, ohm-1 m-1
n = -1/(RH*e);       //density, m^3
printf("density of charge carriers in m^3 is");
disp(n);
mew = sigma/(n*e);     //mobility, m^2/Vs
printf("mobility of charge carriers is %5.4f m^2/Vs",mew);
