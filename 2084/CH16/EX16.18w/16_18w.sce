//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 16.18w
//calculation of the apparent frequency

//given data
us=36*10^3/(60*60)//speed(in m/s)of the car
v=340//speed(in m/s) of the sound in the air
nu=500//frequency(in Hz)

//calculation
nudash=(v/(v+us))*nu//apparent frequency  heard by the observer
nudashdash=(v/(v-us))*nu//frequency received by the wall

printf('the apparent frequency heard by the ground observer is %d Hz',round(nudash))
printf('\nthe frequency of the reflected wave as heard by the ground observer is %d Hz',nudashdash)
