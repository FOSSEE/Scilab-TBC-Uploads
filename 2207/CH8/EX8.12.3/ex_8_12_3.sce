//Example 8.12.3: torque  
clc;
clear;
close;
format('v',7)
//given data :
Ia=50;// in A
Rf=150;//in ohm
Ra=.25;// in ohm
Kv=1.4;// in V/A-rad/sec
alfa_f=0;
alfa_a=45;// in degree
Vm=230*sqrt(2);// in volts
Vs=230;// in volts
Ef=((2*Vm)/%pi)*(cosd(alfa_f));
If=Ef/Rf;
T=Kv*Ia*If;
disp("part (a)")
disp(T,"Torque developed by the motor,T(N/m) = ")
Ea=((2*Vm)/%pi)*(cosd(alfa_a));
Eg=Ea-(Ia*Ra);
w=Eg/(Kv*If);
N=(w/(2*%pi))*60;
disp("part (b)")
disp(N,"Speed,N(rpm) = ")
disp("part (c)")
Ea=Eg+(Ra*Ia);
alfa_a=acosd(((Ea*%pi)/(Vm*sqrt(2)))-1);
Ismax=Ia*((180-alfa_a)/180)^(1/2);//in amperes
PF=((Ea*Ia)/(Vm*Ismax));//lagging
disp(PF,"power factor (lagging) is")
//supply power factor is calculated wrong in the textbook
