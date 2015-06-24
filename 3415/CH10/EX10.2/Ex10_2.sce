//fiber optic communications by joseph c. palais
//example 10.2
//OS=Windows XP sp3
//Scilab version 5.4.1
//given
clc;
clear all;
lambda=0.82*(10^-6)//wavelength in m
pulse=10^-9//duration of pulse in sec
c=3*10^8//velocity of light in m/s
//to find
f=c/lambda;//frequency of oscillation in Hz
mprintf("Frequency is=%fx10^14Hz",f/10^14) //division by 10^14 AND SHOWING THE RESULT AS X 10^14
T=1/f;//Pulse duration in sec
mprintf("\nPeriod is=%fx10^-15sec",T*10^15)//MULTIPLICATION by 10^15 AND SHOWING THE RESULT AS X 10^-15
Oscillations=pulse/T;//no. of oscillations
mprintf("\ntotal oscillations=%ioptic cycles",Oscillations)
