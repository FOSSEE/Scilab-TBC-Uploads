
clear;
clc;
printf("\t Example 2.25\n");
            //using wilke and chang empirical correlation
//Dab=(117.3*10^-18)*(phi*Mb)^0.5*T/(u*va^0.6);

T=288;                          //temperature in kelvin
Mb=18;                          //molecular weight of methanol
phi=2.26;                        //association factor for solvent
va=(2*14.8+(6*3.7)+7.4)*10^-3    //solute(water) volume at normal BP in m^3/kmol
u=1*10^-3;                     //viscosity of solution in kg/m*s
Dab=(117.3*10^-18)*(phi*Mb)^0.5*T/(u*va^0.6);    //diffusion coefficient in m^2/s
printf("\ndiffusivity of methanol in water is :%f*10^-9 m^2/s",Dab/10^-9);
//end