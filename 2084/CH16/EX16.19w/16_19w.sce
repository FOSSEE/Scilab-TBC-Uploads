//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 16.19w
//calculation of the frequency of the whistle of the train

//given data
us=72*10^3/(60*60)//speed(in m/s) of the train 1
u0=54*10^3/(60*60)//speed(in m/s) of the train 2
nu=600//frequency(in Hz) of the whistle
v=340//speed(in m/s)of sound in the air

//calculation
nudash=((v+u0)/(v-us))*nu//frequency heard by the observer before the meeting of the trains
nudashdash=((v-u0)/(v+us))*nu//frequency heard by the observer after the crossing of the trains

printf('the frequency heard by the observer before the meeting of the trains is %d Hz',round(nudash))
printf('\nthe frequency heard by the observer after the crossing of the trains is %d Hz',round(nudashdash))
