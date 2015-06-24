//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 16.22w
//calculation of the speed of the car

//given data
nudash=440//frequency(in Hz) emitted by the wall
nudashdash=480//frequency(in Hz) heard by the car driver
v=330//speed(in m/s) of the sound in the air

//calculation
//frequency received by the wall..............nudash = (v/(v-u))*nu............(1)
//frequency(in Hz) heard by the car driver....nudashdash = ((v+u)/v)*nudash....(2)
//from above two equations,we get
u=((nudashdash-nudash)/(nudashdash+nudash))*v//speed of the car

printf('the speed of the car is %3.1f m/s or %d km/h',u,round(u*10^-3*60*60))
