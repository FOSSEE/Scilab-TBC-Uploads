//To calculate the density and mobility of electrons
rho_s = 10.5*10^3;    //density of silver, kg/m^3
NA = 6.02*10^26;     //avagadro number, /k-mol
MA = 107.9;     //atomic weight of silver
n = rho_s*NA/MA;      //molar volume of silver
printf("density of electrons in silver is");
disp(n);
sigma = 6.8*10^7;     //conductivity of silver, ohm-1 m-1
e = 1.6*10^-19;
mew = sigma/(n*e);     //mobility of electrons, m^2/Vs
printf("mobility of electrons is %5.5f m^2/Vs",mew);

