//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 9.1
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
eta=0.6;//Dimensionless Quantum Efficiency of photodiode 
Lambda0=1.3e-6;//Wavelength in m
e=1.6e-19;//Electronic charge in C
P=10e-6;//Optical power in W
h=6.6e-34;//Planck's constant in SI Units
c=3e8;//Speed of light in m/s
iD=3e-9;//Reverse bias leakage current in A
Deltaf=500e6;//Bandwidth of system in Hz
k=1.38e-23;//Boltzmann constant in SI Units
Rl=50;//Load resistor in Ohms
T=300;//Absolute temperature in K
Fn=1;//Assumption

iLambda=eta*P*e*Lambda0/(h*c);//Corresponding photogenerated current in A
mprintf("\n iLambda = %.2f uA",iLambda/1e-6);//Dividing by 10^(-6) to convert to uA
//The answers vary due to round off error

//Let the total shot noise be Ishot
Ishot=sqrt(2*(iLambda+iD)*e*Deltaf);
mprintf("\n Ishot = %.1f nA",Ishot/1e-9);//Dividing by 10^(-9) to convert to nA

DeltaiJ=sqrt(4*k*T*Fn*Rl*Deltaf)/Rl;//Corresponding Johnson noise in A
mprintf("\n DeltaiJ = %.2f nA",DeltaiJ/1e-9);//Dividing by 10^(-9) to convert to nA
//The answers vary due to round off error

SNR=(iLambda^2)/(Ishot^2 + DeltaiJ^2);//Corresponding Dimensionless Signal to Noise Ratio
mprintf("\n (S/N) = %.2f",SNR);//The answers vary due to round off error
