//Example 8.19.1: Firing angle to keep the motor current and Power fed back 
clc;
clear;
close;
//given data :
format('v',7)
Vs_rms=260;// in volts
Ia=40;// in A
Eg=192;//in volts
kv=0.182;// in V/rpm
Ra=0.3;// in ohm
Ea=Eg+(Ia*Ra);
alfa_a=acosd((Ea*%pi)/(2*Vs_rms*sqrt(2)));
disp("part (a)")
disp(alfa_a,"Firing angle to keep motor current,alfa_a(degree) = ")
Ea1=-Eg+(Ia*Ra);
alfa_b=acosd((Ea1*%pi)/(2*Vs_rms*sqrt(2)));
disp(alfa_b,"Firing angle ,alfa_a(degree) =")
disp("part (b)")
Ia=40;// in A
Eg=192;//in volts
Ra=0.3;// in ohm
Ea=-Eg+(Ia*Ra);
P=abs(Ea)*Ia;
disp(P,"Power fed back,P(Watt) = ")
