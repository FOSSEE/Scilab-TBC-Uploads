//Example 3.12: length
clc;
clear;
close;
r=0.0250;//ohms
l=100;//cm
d=100;//divisions
r1=r/l;//ohm/cm
p=10;//ohms
q=10;//ohms
x=p/q;//
r2=1.0125;//ohms
r3=1;//ohms
l1=((r3+r)-r2)/(2*r1);//cm
l2=100-l1;//cm
disp("In case 1 balance is obtained at "+string(l1)+" and "+string(l2)+" scale divisions")
p1=9.95;//ohms
q1=10.05;//ohms
x1=p1/q1;//
r2=1.0125;//ohms
r3=1;//ohms
l11=((p1*(r3+r))-(q1*r2))/((p1*r1)+(q1*r1));//cm
l21=100-round(l11);//cm
disp("In case 2 balance is obtained at "+string(round(l11))+" and "+string(l21)+" cm")
