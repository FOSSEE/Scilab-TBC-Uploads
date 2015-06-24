// chapter 13
// example 13.18
// Determine the maximum power disspation
// page-843
clear;
clc;
// given
Cs=0.2; // in J/degree C (thermal capacity)
theta=0.7; // in degree C/W (thermal resistance)
T_J=40; // in degree C (junction temperature)
t=0.1; // in s
// calculate
power_diss_per_degreeC=1/theta; // calculation of power dissipation per degree Celsius rise
tou=Cs/power_diss_per_degreeC; //  calculation of thermal time constant
// since T_J=T_J_max*(1-exp(-t/tou)), therefore we get
T_J_max=T_J/(1-exp(-t/tou)); //  calculation of maximum junction temperature
P_max_diss=T_J_max*power_diss_per_degreeC; //  calculation of maximum power disspation
printf("\nThe maximum power disspation is \t P_max_diss=%.f W",P_max_diss);
// Note :The answer vary slightly due to precise calculation