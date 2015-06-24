// Exa 2.20
format('v',4);
clc;
clear; 
close;
// Given data 
unCox= 20*10^-6;//in A/V^2
upCox= unCox/2.5;// in A/V^2
V_DD= 3;//in V
Vt= 1;// in V
W= 30;// in µm
L= 10;// in µm
// V_GS1= V_GS2
// Formula V_DD= V_GS1+V_GS2
V_GS1= V_DD/2;//in V
V_GS2= V_GS1;// in V
V2= V_GS1;// inV
I1= 1/2*unCox*W/L*(V_GS1-Vt)^2;// in A
// Both transistor have V_D = V_G and therefore they are operating in saturation 
//1/2*unCox*W/L*(V4-Vt)^2 = 1/2*upCox*W/L*(V_DD-V4-Vt)
V4= (V_DD-Vt+sqrt(unCox/upCox))/(1+sqrt(unCox/upCox));
I3= 1/2*unCox*W/L*(1.39-Vt)^2 
disp(V2,"The value of V2 in volt is : ")
I1= I1*10^6;// in µA
disp(I1,"The value of I1 in µAis : ")
disp(V4,"The value of V4 in volt is : ")
I3= I3*10^6;// in µA
disp(I3,"The value of I3 in µAis : ")
