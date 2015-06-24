clc
clear
//Input data
s=0.005//Delay in sec
d=30//Bore in cm
N=600//Speed in r.p.m
dx=[10,15,20]//Bore diameters in cm

//Calculations
t=(s/d)*dx//Time of delay in sec. In textbook, t(2) is given wrong as 0.00025 sec instead of 0.0025 sec

//Output
printf('The delay time for %i cm diameter bore is %3.5f sec \n The delay time for %i cm diameter bore is %3.5f sec \n The delay time for %i cm diameter bore is %3.5f sec',dx(1),t(1),dx(2),t(2),dx(3),t(3))
