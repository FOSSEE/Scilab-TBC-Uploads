
clear;
clc;
printf("\t Example 2.2\n");
                //kopp's law is valid

u=1.145*10^-3;                        //viscosity of water1.145cp
v_a=5*.0148+12*.0037+1*.0074;         //by kopp's law
t=288;                                //temperature of water in kelvin
MB=18;                                //molecular weight of water
phi=2.26;                             //association parameter for solvent-water

D_ab=(117.3*10^-18)*((phi*MB)^.5)*(t)/(u*(v_a)^.6);
printf("\n the diffusivity of isoamyl alcohol is :%f *10^-9 m^2/s",D_ab/10^-9);
//end