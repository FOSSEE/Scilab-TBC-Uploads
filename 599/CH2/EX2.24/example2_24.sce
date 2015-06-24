
clear;
clc;
printf("\t Example 2.24\n");
            //using wilke and chang empirical correlation
//Dab=(117.3*10^-18)*(phi*Mb)^0.5*T/(u*va^0.6);

T=288;                          //temperature in kelvin
Mb=32;                          //molecular weight of methanol
phi=1.9;                        //association factor for solvent
va=(14.8+(4*24.6))*10^-3        //solute(CCl4) volume at normal BP in m^3/kmol
u=.6*10^-3;                     //viscosity of solution in kg/m*s
Dab=(117.3*10^-18)*(phi*Mb)^0.5*T/(u*va^0.6);    //diffusion coefficient in m^2/s
printf("\ndiffusivity of methanol in carbon tetrachloride is :%f*10^-9 m^2/s",Dab/10^-9);
//end