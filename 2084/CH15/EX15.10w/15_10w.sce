//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 15.10w
//calculation of the length of the wire

//given data
mu=5*10^-3//mass density(in kg/m) of the wire
F=450//tension(in N) produced in the wire
nu1=420//frequency(in Hz) of nth harmonic
nu2=490//frequency(in Hz) of (n+1)th harmonic

//calculation
//from formula of fundamental frequency.....nu = (1/(2*L))*sqrt(F/mu)......(1)
n=nu1/(nu2-nu1)//value of n
L=(n/(2*nu1))*sqrt(F/mu)//erom equation (1)

printf('the length of the wire is %3.1f m',L)
