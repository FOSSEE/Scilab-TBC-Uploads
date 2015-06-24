//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 3.17w
//calculation of time taken and position of the arrival on opposite bank

//given data
dyaxis=.5//displacement(in km) along Y axis
vrg=2//velocity(in km/h) of the river with respect to ground
vmr=3////velocity(in km/h) of the man with respect to river
theta1=30//angle(in degree) of vmr with Y axis
theta2=90//angle(in degree) of vrg with Y axis

//calculation
vyaxis=(vmr*cosd(theta1))+(vrg*cosd(theta2));//velocity along Y axis i.e taking y component in equation   vmg=vmr+vrg
t=dyaxis/vyaxis;
vxaxis=(-vmr*sind(theta1))+(vrg*sind(theta2));//velocity along X axis i.e taking x component in equation   vmg=vmr+vrg
dxaxis=vxaxis*t;

printf('time taken by the swimmer to cross the river is %3.2f hour',t);
printf('\ndisplacement of the swimmer along X axis is %3.4f km',dxaxis);

