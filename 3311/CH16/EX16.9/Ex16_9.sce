// chapter 16
// example 16.9
// Determine the value of coupling capacitor, verfiy if the value is acceptable or not, If not then determine the new value
// page-1019-1020
clear;
clc;
// given
P0=200; // in W
fs=20; // in kHz
n=10; // turns ratio
L=20; // in uH
e=80; // in % (efficiency)
E=230; // in V (used in the book)
alpha_max=0.8; // assumption for duty cycle as done in the book
tolerance=20; // assumption for voltage tolerance as done in the book
// calculate
fs=fs*1E3; // changing unit from kHz to Hz
L=L*1E-6; // changing unit from uH to H
L_R=n^2*L;// calculation of resonant inductance
f_R=0.25*fs;// calculation of resonant freuquency
Cc=1/(4*(%pi*f_R)^2*L_R);// calculation of coupling capacitor
Edc=E*sqrt(2);// calculation of dc voltage
Ic=2*P0/((e/100)*alpha_max*Edc);// calculation of coupling current
I=Ic+(tolerance/100)*Ic;// calculation of worst case coupling current
dt=alpha_max/(2*fs);
Vc=(I/Cc)*dt;// calculation of coupling capacitor charge voltage
// since the range of Vc is 6 to 32 V, 
// let us assume dVc=30 V therefore, the new value of capacitor is C=I*(dt/dVc);
dVc=30; // in V
C=I*(dt/dVc);// calculation of new coupling capacitance
printf("\nThe value of coupling capacitor is \t\t Cc=%.2f uF",Cc*1E6);
printf("\nThe peak coupling capacitor charge voltage is \t vc=%.1f V",Vc);
if Vc>=6 & Vc<=32 then
    printf("\n\nThe value of Vc is acceptable.");
else
    C=I*dt/dVc;
    printf("\nThe new value of coupling capacitor is \t\t C=%.1f uF",C*1E6);
end
// Note : the answer vary slightly due to round off