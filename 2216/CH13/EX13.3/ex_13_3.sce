//Example 13.3: phase shift
clc;
clear;
close;
//given data :
format('e',9)
L=500;// in m
D=0.1;//in m
ohm=7.3*10^-5;// in rad s^-1
lamda=0.85*10^-6;// in m
c=3*10^8;// in m/s
del_fi=(2*%pi*L*D*ohm)/(c*lamda);
disp(del_fi,"phase shift,del_fi(rad) = ")
