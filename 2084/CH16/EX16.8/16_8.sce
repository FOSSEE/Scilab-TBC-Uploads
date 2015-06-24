//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 16.8
//calculation of the most dominant frequency

//given data
us=36*10^3/(60*60)//speed(in m/s) of the train
nudash=12*10^3//frequency(in Hz) detected by the detector
v=340//velocity(in m/s) of the sound in air

//calculation
//frequency detected is ......nudash = (v*nu0)/(v-us)
nu0=(1-(us/v))*nudash//required frequency

printf('the most dominant frequency is %3.1f kHz',nu0*10^-3)
