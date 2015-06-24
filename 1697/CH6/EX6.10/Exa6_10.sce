//Exa 6.10
clc;
clear;
close;
//Given Data:
Tau=0.7;//Design Factor
L1=0.3*2;//in meter
c=3*10^8;//speednof light in m/s
f1=(c/(2*L1))/10^6;//in MHz
//Design factor : L1/L2=L2/L3=L3/L4=.......=0.7
L2=0.7/L1;//in meter
f2=f1*0.7;//in MHz
f3=f2*0.7;//in MHz
f4=f3*0.7;//in MHz
f5=f4*0.7;//in MHz
f6=f5*0.7;//in MHz
f7=f6*0.7;//in MHz
f8=f7*0.7;//in MHz
f9=f8*0.7;//in MHz
f10=f9*0.7;//in MHz
disp("Cutoff frequencies in MHz :")
disp(f1,"f1 in MHz :");
disp(f2,"f2 in MHz :");
disp(f3,"f3 in MHz :");
disp(f4,"f4 in MHz :");
disp(f5,"f5 in MHz :");
disp(f6,"f6 in MHz :");
disp(f7,"f7 in MHz :");
disp(f8,"f8 in MHz :");
disp(f9,"f9 in MHz :");
disp(f10,"f10 in MHz :");
disp(f1-f10,"Passband=");