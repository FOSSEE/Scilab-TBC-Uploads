//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 16.21w
//calculation of the original frequency of the source

//given data
u0=10//speed(in m/s) of the observer going away from the source
us=10//speed(in m/s) of the source going away from observer
nudash=1950//frequency(in Hz) of the sound detected by the detector
v=340//speed(in m/s) of the sound in the air

//calculation
nu=((v+us)/(v-u0))*nudash//original frequency

printf('the original frequency of the source is %d Hz',round(nu))
