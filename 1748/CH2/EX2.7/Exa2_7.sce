//Exa 2.7
clc;
clear;
close;
//Given data : 
N=1440;//in rpm
f=50;//in Hz
disp("For this speed of 1440 rpm the synchronous speed may be either 1500 rpm or 3000 rpm.");
disp("If the synchronous speed is 3000 rpm then in generl case the speed will not be too slow. o the synchronous speed for this motor is 1500 rpm and and no. of poles corresponding to this speed is 4.");
Ns=1500;//in rpm
P=4;//no. of poles
disp(P,"No. of poles : ");
Slip=(Ns-N)*100/Ns;//in %
disp(Slip,"Slip(in %) : ");
speed1=Ns-N;//Speed of rotor flux with respect to rotor
disp(speed1,"Speed of rotor flux with respect to rotor in rpm : ");
speed2=(speed1)+N;//Speed of rotor flux with respect to stator
disp(speed2,"Speed of rotor flux with respect to stator in rpm :");