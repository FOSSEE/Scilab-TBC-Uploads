//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 6.3
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
E=1.7;//Total energy emitted in the pulse in J (From previous example)
L=0.1;//Cavity length of the laser in m
R=0.8;//Mirror reflectance of the laser
c=3e8;//Speed of light in air in m/s

tc=L/((1-R)*c);//Cavity lifetime of the laser in s
mprintf("\n tc = %.1f ns",tc/1e-9);//Dividing by 10^(-9) to convert in ns

P=E/tc;//Pulse power in W
mprintf("\n P = %.1e W",P);

