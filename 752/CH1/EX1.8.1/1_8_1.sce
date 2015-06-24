clc;
// page no 26
// prob no 1_8_1
//High frequency transformer with identical primary and secondary circuits
Lp=150*10^-6;
Ls=150*10^-6;
Cp=470*10^-12;
Cs=470*10^-12;
//Lp=Ls=150 uH,Cp=Cs=470 pF
Q=85//Q-factor for each ckt is 85
c=0.01//Coeff of coupling is 0.01
Rl=5000//Load resistance Rl=5000 ohm
r=75000//Constant current source with internal resistance r=75 kohm
//Determination of common resonant frequency
wo=1/((Lp*Cp)^(1/2));
//disp('Mrad/sec',wo/(10^6),+'The value of common resonant freq is');
p=3.77*10^6;
Z2=Rl/(1+(p*%i*Cs*Rl));
Z1=r/(1+(p*%i*Cp*r));
// At resonance Zs=Zp=Z
Z=wo*Ls*(1/Q +%i);
Zm=%i*p*c*Lp;
// Determination of denominator
Dr=((Z+Z1)*(Z+Z2))-(Zm^2)
// Hence transfer impedance is given as
Zr= (Z1*Z2*Zm)/Dr;
disp('ohm',Zr,'The transfer impedance is');