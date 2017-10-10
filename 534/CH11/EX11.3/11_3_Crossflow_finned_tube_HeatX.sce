clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 11.3   Page 692 \n'); //Example 11.3
// Required gas side surface area

//Operating Conditions
Tho = 100+273    ;//[K] Hot Fluid outlet Temperature
Thi = 300+273    ;//[K] Hot Fluid intlet Temperature
Tci = 35+273    ;//[K] Cold Fluid intlet Temperature
Tco = 125+273   ; //[K] Cold Fluid outlet Temperature
mc = 1          ;//[kg/s] Cold Fluid flow rate
Uh = 100        ;//[W/m^2.K] Coefficient of heat transfer
//Table A.5 Water Properties T = 353 K
cph = 1000       ;       //[J/kg.K] Specific Heat
//Table A.6 Saturated water Liquid Properties Tc = 308 K
cpc = 4197        ;      //[J/kg.K] Specific Heat

Cc = mc*cpc;
//Equation 11.6b and 11.7b
Ch  = Cc*(Tco-Tci)/(Thi-Tho);
// Equation 11.18
qmax = Ch*(Thi-Tci);
//Equation 11.7b
q = mc*cpc*(Tco-Tci);

e = q/qmax;
ratio = Ch/Cc;

printf("\n As effectiveness is %.2f with Ratio Cmin/Cmax = %.2f, It follows from figure 11.14 that NTU = 2.1",e,ratio);
NTU = 2.1;
A = 2.1*Ch/Uh;

printf("\n Required gas side surface area = %.1f m^2",A);
//END