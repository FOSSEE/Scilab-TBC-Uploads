//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 3.10
//calculation of velocity of the swimmer with respect to ground

//given data
vsr=4//velocity(in km/h) of the swimmer with respect to water 
vrg=3//velocity(in km/h) of the river water with respect to ground

//calculation
vsg=sqrt((vsr*vsr)+(vrg*vrg));//formula for relative velocity    vsg = vsr + vrg
theta=atand(4/3);

printf('the velocity of the swimmer with respect to ground is %f km/h and angle made by him with X axis is %f degree',vsg,theta);
