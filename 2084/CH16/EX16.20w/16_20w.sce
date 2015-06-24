//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 16.20w
//calculation of the main frequency heard by the person

//given data
us=36*10^3/(60*60)//speed(in m/s) of the person on the scooter
v=340//speed(in m/s) of sound in the air
nu=600//frequency(in Hz) of the siren

//calculation
nudash=(v/(v+us))*nu//main frequency

printf('the main frequency heard by the person is %d Hz',round(nudash))
