//Determine the resonant frequency and the source current

clc;
clear;

L=0.24; // Inductance
Rl=150; 
Rc=100;
C=3*(10^-6); // Capacitance
f=50;
w=2*%pi*f;
V=200; // Source voltage

fs=1/(2*%pi*sqrt(L*C)); // Frequency at the time of series connection

f0=fs*sqrt(((Rl^2)-(L/C))/((Rc^2)-(L/C)))// Resonant frequency

//Taking voltage as the reference

Xl=L*w; // Inductive reactance
Xc=1/(C*w); // Capacitive reactance

Ra=Rl+(%i*Xl); // Effective resistance of inductive branch
Rb=Rc-(%i*Xc);// Effective resistance of capacitive branch

Reff=Ra*Rb/(Ra+Rb); // Effective Resistance
Tr=atand(imag(Reff)/real(Reff)); // Phase Angle

I=V/Reff;// Source current
Ti=atand(imag(I)/real(I))// Phase angle

printf('The resonant frequency = %g Hz\n',f0)
printf('The source current = %g/_%g A\n',abs(I),Ti)
printf('The input impeadance = %g/_%g ohms\n',abs(Reff),Tr)


