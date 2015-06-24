//Example 8.19.2 Average armature voltage ,back emf ,speed of the motor , motor torque and supply power factor
clc;
clear;
close;
format('v',5)
//given data :
Vm=230;// in volts
Ia=40;// in A
Ra=0.5;// in ohm
Ka_fi=0.2;// in V/rpm
alfa=30;
Ea=(Vm*sqrt(2)*(1+cosd(alfa)))/%pi;
disp("part (a)")
disp(Ea,"Average armature current,Ea(volts) = ")
disp("part (b)")
Eb=Ea-(Ia*Ra);
disp(Eb,"Back emf,Eb(volts) = ")
disp("part (c)")
N=Eb/Ka_fi;
disp(round(N),"Speed of the motor,N(rpm) = ")
disp("part (d)")
Ka_fi1=(Ka_fi*60)/(2*%pi);
T=Ka_fi1*Ia;
disp(T,"Torque,T(N/m) = ")
disp("part (e)")
alfa=%pi/6;
PF=(2*sqrt(2)*cos(alfa/2)^2)/(sqrt(%pi*(%pi-alfa)));
disp(PF,"power factor (lagging) is")
