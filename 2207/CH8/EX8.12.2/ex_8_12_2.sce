//Example 8.12.2: the field current,Evaluation of alfa,Evaluation of power factor
clc;
clear;
close;
//given data :
format('v',7)
TL=50;// in N-M
N=1000;//in rpm
Rf=150;//in ohm
Ra=.25;// in ohm
Kv=0.7032;
alfa=0;
Vm=230;// in volts
Ef=((Vm*sqrt(2))/%pi)*(1+cosd(alfa));
If=Ef/Rf;
disp("part (a)")
disp(If,"Field current,If(A) = ")
disp("part (b)")
w=(2*%pi*N)/60;
Ia=TL/(Kv*If);
Eg=Kv*w*If;
Ea=Eg+(Ra*Ia);
alfa_a=acosd(((Ea*%pi)/(Vm*sqrt(2)))-1);
disp(alfa_a,"angle in degree")
disp("part (c)")
Ismax=Ia*((180-alfa_a)/180)^(1/2);//in amperes
PF=((Ea*Ia)/(Vm*Ismax));//lagging
disp(PF,"power factor (lagging) is")
