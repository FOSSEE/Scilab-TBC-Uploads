//Example 1_9
clc;
clear;
close;
format('v',6);
//given data :
//9*I1-2*I2-3*I3=24-V from mesh 1
//I1-6*I2+3*I3=0 from mesh 2
//3*I1+6*I2-11*I3=-V from mesh 3
d=[9 -2 -3;1 -6 3;3 6 -11];
delta=det(d);//determinant
//d1=[24-V -2 -3;0 -6 3;-V 6 -11];
//delta1=det(d1);determinant
//Putting I1=delta1/delta=0
V=(24*(66-18))/((66-18)+(-6-18));//V
disp(V,"Unknown Voltage(V)");
