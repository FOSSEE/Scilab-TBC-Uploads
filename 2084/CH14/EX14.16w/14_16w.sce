//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 14.16w
//calculation of the shearing stress between the horizontal layers of water

//given data
v=18*10^3/(60*60)//velocity(in m/s) of the water in river
d=5//depth(in m) of the river
// 1 poise = 0.1 N-s/m^2
eta=10^-2*10^-1//coefficient of viscosity(in N-s/m^2) of the water

//calculation
dvbydx=v/d//velocity gradient
//force of viscosity ......F=eta*A*(dvbydx)
//shearing stress..........Ss=F/A
Ss=eta*(dvbydx)

printf('the shearing stress between the horizontal layers of water is %3.1e N/m^2',Ss)
