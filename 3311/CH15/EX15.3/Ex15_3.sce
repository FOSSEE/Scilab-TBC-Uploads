// chapter 15
// example 15.3
// Determine the input voltage, armature current, excitation voltage, torque angle and pull-out torque
// page-977-978
clear;
clc;
// given
P=6; // number of poles
f=50; // in Hz
E=400; // in V
Xs=%i*2; // in ohm (reactance per phase)
T_L=300; // in Nm
N=1000; // in rpm
f_inv=40; // in Hz (invertor frequency)
Nm=560; // in rpm (motor speed)
phi=0; // in degree (used in the book)
// calculate
Pf=cosd(phi);
Es=E/sqrt(3);
Eb=Es;
Ea_rated=Es;
w=2*%pi*f;
ws=2*w/P;
wb=ws;
Ns=(60/(2*%pi))*ws;
K=Eb/wb;
T_L1=T_L*(Nm/N)^2;
wm1=Nm*(2*%pi/60);
ws1=wm1;
P0=T_L1*wm1;
Ea=K*ws1;
// since P0=3*Ea*Ia*Pf, therefore we get
Ia=P0/(3*Ea*Pf);
Ef=Ea-Ia*(Xs);
Ef_abs=abs(Ef);
Ef_phase=atand(imag(Ef)/real(Ef));
del=Ef_phase;
T_P=3*Ea*Ef_abs/(2*wm1);
printf("\nThe input voltage is \t\t Ea=%.2f V",Ea);
printf("\nThe armature current is \t Ia=%.2f A",Ia);
printf("\nThe excitation voltage is \t Ef=%.2f V <%.2f degree",Ef_abs,Ef_phase);
printf("\nThe torque angle is \t\t %.2f degree",del);
printf("\nThe pull-out torque is \t\t T_P=%.2f Nm",T_P);
// Note: 1. In the book, the value of N given is N=100 rpm, but hte author hase used N=1000 rpm while solving. I have also used N=1000 rpm to make the answers to have practical values.
//       2. The answers in the book vary slightly due to precise calculations