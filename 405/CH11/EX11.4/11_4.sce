clear;
clc;
printf("\t\t\tExample Number 11.4\n\n\n");
// relative humidity of air stream
// Example 11.4(page no.-591)
// solution

// these data were taken from previous example
Rho = 1.212;// [kg/cubic meter]
Cp = 1004;// [J/kg]
Le = 0.845;
Tw = 18.3;// [degree celsius]
Tinf = 32.2;// [degree celsius]
Rhow = 0.015666;// [kg/cubic meter]
Cw = Rhow;// [kg/cubic meter]
Hfg = 2.456*10^(6);// [J/kg]
// we use eqn 11-31
Cinf = Cw-(Rho*Cp*Le^(2/3)*(Tinf-Tw)/Hfg);// [kg/cubic meter]
Rhoinf = Cinf;// [kg/cubic meter]
Rhog = 0.0342;// [kg/cubic meter]
RH = (Rhoinf/Rhog)*100;
printf(" relative humidity is therefore %f percentage",RH);

