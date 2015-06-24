//Example 8.12.4: Motor torque
clc;
clear;
close;
format('v',7)
//given data :
Vs_rms=230;// in volts
N=1200;// in rpm
Ia=40;// in A
Ra=0.25;//in ohm
Ka_fi1=0.182;// in V/rpm
Ka_fi=(0.182*60)/(2*%pi);
alfa_a=30;
T=Ka_fi*Ia;
disp("part (a)")
disp(T,"Motor torque,T(N-m) = ")
disp("part (b)")
Ea=((2*sqrt(2)*Vs_rms)/%pi)*(cosd(alfa_a));
N=(Ea-(Ra*Ia))/Ka_fi1;
disp(N,"Speed of the motor,N(rpm) = ")
disp("part (c)")
Is_rms=Ia;
PF=(Ea*Ia)/(Vs_rms*Is_rms);
disp(PF,"Power factor,PF(lagging) = ")
