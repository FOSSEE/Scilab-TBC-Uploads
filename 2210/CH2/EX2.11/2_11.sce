//Chapter 2, Problem 11
clc
Vswr=1.07                   //voltage standing wave ratio
Z0=50                       //characteristic impedance in ohm

//calculation of power reflected in percent
ref=(Vswr-1)/(Vswr+1)
Pref=(ref^2*100)

printf("Reflected power = %.1f percentage of power incident",Pref)
