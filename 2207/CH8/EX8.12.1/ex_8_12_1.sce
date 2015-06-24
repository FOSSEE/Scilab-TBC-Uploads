//Example 8.12.1: back emf ,Required armature voltage and Rated armatuer current
clc;
clear;
close;
//given data :
format('v',7)
TL=45;// in N-M
N=1200;//in rpm
Rf=147;//in ohm
Ra=25;// in ohm
Kv=0.7032;
w=(2*%pi*N)/60;
Vf=220;//in volts
Kt=Kv;
If=Vf/Rf;
T=TL;
Ia=T/(Kt*If);
Eg=Kv*w*If;
disp("part (a)")
disp(Eg,"Back emf,Eg(Volts) = ")
disp("part (b)")
Ea=(Ia*(Ra/100))+Eg;
disp(Ea,"Required armature voltage,Ea(volts) = ")
disp("part (c)")
rac=11191.4/Vf;//
disp(rac,"rated armature current in amperes is")
