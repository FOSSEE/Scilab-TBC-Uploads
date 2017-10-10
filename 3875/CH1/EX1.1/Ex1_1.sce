clc ;
clear ;
m=100*10^-3 //flat disc mass in kg
t=60 //time period of  oscillation in sec
omega=10 //frequency in Hz

//Calculation
damp_omega=log(2)/60 //amplitude of damped oscillator for A/C = 1/2 in rad/s
c= 2*m*damp_omega
tau= 1/damp_omega

mprintf("Resistive force = %0.2e newton/s/meter \n",c)
mprintf("Relaxation time = %2.2f s",tau) //The answer provided in the textbook is wrong.
