clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 6.7   Page 383 \n'); //Example 6.7
// Steady State Temperature of Beverage

//Operating Conditions
Tsurr = 40+273;    //[K] Surrounding Air Temperature
//Volatile Wetting Agent A
hfg = 100;        //[kJ/kg]
Ma = 200;         //[kg/kmol] Molecular mass
pasat = 5000;     //[N/m^2] Saturate pressure
Dab = .2*10^-4;   //[m^2/s] Diffusion coefficient

//Table A.4 Air Properties at T = 300K
p = 1.16;                //[kg/m^3] Density
cp = 1.007;              //[kJ/kg.K] Specific Heat
alpha = 22.5*10^-6;      //[m^2/s] 
R = 8.314;               //[kJ/kmol] Universal Gas Constt

//Applying Eqn 6.65 and setting pasurr = 0
// Ts^2 - Tsurr*Ts + B = 0     , where the coefficient B is
B = Ma*hfg*pasat*10^-3/[R*p*cp*(alpha/Dab)^(2/3)];
Ts = [Tsurr + sqrt(Tsurr^2 - 4*B)]/2;

printf("\n Steady State Surface Temperature of Beverage = %.1f degC", Ts-273);
//END