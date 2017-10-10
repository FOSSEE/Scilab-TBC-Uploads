//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 6.1
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
DeltaNu=1.1e11;//Fluorescent linewidth in Hz
L=0.1;//Length of the laser rod in m
c=3e8;//Speed of light in m/s

//Let the mode separation be 'M'
M=c/(2*L);//Mode separation in Hz
mprintf("\n Mode separation = %.1e Hz",M);

//Let the number of modes oscillating be 'N'
N=DeltaNu/M;
mprintf("\n The number of modes oscillating = %d",N);

//Let the pulse separation in seconds be 't'
t=2*L/c;
mprintf("\n Pulse separation = %.1f ns",t/1e-9);//Dividing by 10^(-9) to convert into ns

//Let the pulse duration be 'T'
T=t/N;
mprintf("\n Pulse duration = %.1f ps",T/1e-12);//Dividing by 10^(-12) to convert into ps
//The answers vary due to round off error
