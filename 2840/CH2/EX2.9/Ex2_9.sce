clc;
clear all;
v=25.2*20.3*8.04 ;//in m^3
T=0.75; //in second
absorp1=500*0.3176 ;//in m^2
absorp2=(0.16*v)/T;
T1=(0.16*v)/(absorp1+absorp2);//reverbaration time
disp(+'second',T1,"reverbaration time =");
