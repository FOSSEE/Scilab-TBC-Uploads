// Exa 5.5
clc;
clear;
close;
// given data 
Vo=7.5;//in Volt
fo=1;// in KHz
DutyCycle=60;//in %
disp("Zener diioe has to be used at the output to limit the output at +7.5 volt or -7.5 volt.");
disp("Thus choose Vz=Vz1=Vz2=6.8 volt as VD=0.7 volt")
Vz=6.8;// in volt
Vz1=6.8;// in volt
Vz2=6.8;// in volt
VD=0.7;// in volt
T=1/fo;//in mSec
// duty cycle 60% gives Ton & Toff
Ton=0.6*T;//in mSec
Toff=T-Ton;//in mSec
// choosing R2=1.16*R1
R1=1;//in Kohm
C=0.1;//in uF
R2=1.16*R1;//in Kohm
R3=Ton*10^-3/(C*10^-6);//in ohm
R4=Toff*10^-3/(C*10^-6);//in ohm
disp(R1,"Value of R1 in Kohm is ; ")
disp(R2,"Value of R2 in Kohm is ; ")
disp(R3/1000,"Value of R3 in Kohm is ; ")
disp(R4/1000,"Value of R4 in Kohm is ; ")
disp(C,"Value of C in uF is ; ");