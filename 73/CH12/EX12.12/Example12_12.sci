//Chapter 12_Signal Generators
//Caption : Generating pulse by 555 timer
//Example12.12:(a)Design a 555 astable multivibrator to generate an output pulse with pulse repetition frequency(PRF)=4 kHz and a duty cycle of 60%.Given Vcc=15V.
//(b)Analyse the circuit designed in part (a) to determine the actual PRF and duty cycle. Given Ithres=25 uA(max.) for timer 555.
clear;
clc;
//a)Solution:
d=60*10^-2;//duty cycle given
PRF=4*10^3;
Vcc=15;//power supply
T=1/PRF;//where T=Tc+Td
Tc=d*T;
Td=T-Tc;
Ithres=25*10^-6;
Icmin=1*10^-3;//since Icmin>>Ithres,so assuming Icmin=1 mA
R=Vcc/(3*Icmin);//where R=Ra+Rb
C=Tc/(0.7*R);
Rb=Td/(0.7*C);
Ra=R-Rb;
disp('kilo Ohm',Ra/10^3,'Designed resistor(Ra) for 555 timer in astable mode is:')
disp('kilo Ohm',Rb/10^3,'Designed resistor(Rb) for 555 timer in astable mode is:')
disp('uF',C*10^6,'Designed Capacitor for 555 timer in astable mode is:')
//b)Solution:
//from equation of charging
Tc1=0.7*R*C;
Td1=0.7*Rb*C;
T1=Tc1+Td1;
PRFa=1/T1;
da=Tc1/(Tc1+Td1)*100;
disp('kHz',PRFa/10^3,'actual Pulse Repetition Frequency is:')
disp('%',da,'actual duty cycle is:')