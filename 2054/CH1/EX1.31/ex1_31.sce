//Exa:1.31
clc;
clear;
close;
f=50;//in hertz
P1=6;//No. of poles
P2=4;//No.of poles
N_s1=120*f/P1;//Synchronous Speed of 6-pole motor
N_s2=120*f/P2;//Synchronous Speed of 4-pole motor
N_sc1=120*f/(P1+P2);//Concantenated Speed of set when cumulatively compounded (in rpm)
N_sc2=120*f/(P1-P2);//Concantenated Speed of set when differentially compounded (in rpm)
disp(' Available Speeds (in rpm) are :');
disp(N_s1,'');
disp(N_s2,'');
disp(N_sc1,'');
disp(N_sc2,'');
P_o=15;//in HP
disp(P_o,'Maximum Load which can be delievered (in HP)=');
r=P1/P2;
disp(r,'Ratio of Mechanical Power Output')