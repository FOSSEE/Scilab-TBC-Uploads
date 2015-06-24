//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 16.5w
//calculation of the atmospheric temperature

//given data
v1=336//speed(in m/s) travelled by the sound
v0=332//speed(in m/s) of the sound at O degreecelsius
T0=0+273//temperature(in kelvin)

//calculation
T=((v1/v0)^2)*T0//temperature (in kelvin)
t=T-273//temperature(in degreecelsius)

printf('the atmospheric temperature is %d degreecelsius',round(t))
