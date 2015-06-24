//clear//
clear;
clc;

//Example 21.5
//Given

T = 110; //[C]
P = 1; //[atm]
mu = 0.26; //[cP]
Dvx = 6.74*10^-5; //[cm^2/s]
rho_mx = 8.47; //[mol/L]
Dvy = 0.0494; //[cm^2/s]
rho_my = 0.0318; //[mol/L]

//(a)
//Using Eq.(21.78)
kybykx = (Dvy/Dvx)^0.5*(rho_my/rho_mx);
//The gas-film coefficient predicted is only 10 percent 
//and if m=1, 90 percent of the overall resistance to mass
//transfer would be in the gas film.
disp(kybykx*100,'fraction of the overall resistance in the gas phase is');

//(b)
//Assuming the column is operated at the same factor F
//Gas film:
rho_myprime = 0.00894; //[mol/L]
Dvyprime = (341/383)^1.81*(Dvy/0.25);
deltakyprime = sqrt(Dvyprime/Dvy)*rho_myprime/rho_my;
//Liquid film:
rho_mxprime = 8.93; //[mol/L]
muprime = 0.35; //[cP]
Dvxprime  =(341/383)*0.26*Dvx/muprime;
deltakxprime = sqrt(Dvxprime/Dvx)*(rho_mxprime/rho_mx);
//kyprime = deltakyprime*ky;
//kxprime = deltakxprime/0.102*ky;
//At 1 atm and ky = 0.102kx and Ky = 0.907/ky
//Kyprime = 0.476*ky
//For overall transfer units
NOy = 2*0.476/0.53;
neta = 1-exp(-NOy);
disp(neta,'The efficieny will be')
