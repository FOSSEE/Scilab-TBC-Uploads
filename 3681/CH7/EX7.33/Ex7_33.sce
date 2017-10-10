// Calculating the rms line voltage and circulating current
clc;
disp('Example 7.33, Page No. = 7.75')
// Given Data
E = 1000;// Amplitude of fundamental emf (in V)
R = 10;// Reactance per phase (in ohm)
// Calculation of the rms line voltage and circulating current
Eph1 = E/2^(1/2);// Rms value of fundamental emf per phase
Eph3 = 0.2*Eph1;// Rms value of 3rd harmonic component of phase voltage (in V)  Given 20%
Eph5 = 0.1*Eph1;// Rms value of 5th harmonic component of phase voltage (in V)  Given 10%
Eph = (Eph1*Eph1+Eph5*Eph5)^(1/2);// Phase voltage considering no 3rd harmonic
disp(3^(1/2)*Eph,'(a) rms line voltage when star connected (V)=');
disp(Eph,'(b) rms line voltage when delta connected (V)=');
I_circulating = 3*Eph3/(3*3*10);// Circulating current taking reactance corresponding to 3rd harmonic
disp(I_circulating,'Circulating current (ampere)=');
//in book answers are 1230.8 V, 710.6 v and 4.71 ampere respectively.  The answers vary due to round off error
