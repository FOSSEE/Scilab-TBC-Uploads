//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 4.1
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
//Let DeltaE = Ec - Ed
DeltaE=0.4;//Depth of the conduction band below the conduction band in eV
kT=0.025;//Value of k*T for room temperature in eV
Q=1e8;//Constant value in s^(-1)

//Let the probability of escape of a trapped electron per second be p
p=Q*exp(-DeltaE/kT);
mprintf("\n Probability of escape of a trapped electron = %.1f s^(-1)",p);//The answers vary due to round off error

//Let the corresponding luminescence lifetime in sec be t
t=1/p; 
mprintf("\n t = %.1f s",t);

