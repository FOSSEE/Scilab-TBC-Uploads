clc; clear; close;

n1=10*(10^6);
n2=50*(10^6);
a1=0.1;
c1=20*(10^(-15));//in F
Vdd1=1.8;//in volts
f1=500*(10^6);//in Hz
a2=0.05;
c2=10*(10^(-15));//in F
Vdd2=1.2;//in volts
f2=1*(10^9);//in Hz
P1=n1*c1*Vdd1*Vdd1*f1*a1;
disp(P1,'Case 1 Power(in watts)=');
P2=n2*c2*Vdd2*Vdd2*f2*a2;
disp(P2,'Case 2 Power(in watts)=');
t1=1/f1;
t2=1/f2;
EDP1=P1*t1*t1;
EDP2=P2*t2*t2;
disp(EDP1,'case 1 EDP(in joule-seconds)=');
disp(EDP2,'case 2 EDP(in joule-seconds)=');
disp('Second design has lower energy delay product , so it is better ');
