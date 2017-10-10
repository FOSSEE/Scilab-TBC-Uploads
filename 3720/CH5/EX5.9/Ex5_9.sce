//Example 5_9
clc;clear;funcprot(0);
// Given values
rho_hg=848;//The density of mercury in lbm/ft^3
rho_sw=64;//The density of seawater in lbm/ft^3
rho_atm=0.076;//The density of atmosphereic air in lbf/ft^3
H_hg=(30-22);// inch
V_a=155;//mph
V_a=155*1.4667;// convert mph into ft/s
P_air=22;// The hurricane atmospheric pressure at the eye of the storm is in Hg
P_atm=30;// in hg
g=32.2;// ft/s^2

// Calculation
//(a)
h_1=((rho_hg/rho_sw)*H_hg)/12;
printf('(a)The pressure difference between points 1 and 3 in terms of the seawater column height,h_1=%0.2f ft\n',h_1);
//(b)
H_air=((V_a^2)/(2*g));//ft
rho_air=(P_air/P_atm)*rho_atm;//the density of air in the hurricane in lbm/ft^3
h_dynamic=(rho_air/rho_sw)*H_air;//ft
h_2=h_1+h_dynamic;//ft
printf('(b)The total storm surge at point 2,h_2=%0.2f ft\n',h_2);
