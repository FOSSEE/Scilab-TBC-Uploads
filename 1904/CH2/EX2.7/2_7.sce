//To determine the annual average power demand
//Page 55
clc;
clear;

printf('Assuming a monthly load curve as shown in the figure attached to this code\n')

TAE=10^7; // Total annual energy in kW
APL=3500; //Annual peak load in kW
Pav= TAE/8760; //Annual average power demand
Fld= Pav/APL; //Annual load factor

printf('a) The annual power demand is %g kW\n',Pav)
printf('b) The annual load factor is %g\n',Fld)
printf('The unsold energy, as shown in the figure is a measure of capacity and investment cost. Ideally it should be kept at a minimum\n')
