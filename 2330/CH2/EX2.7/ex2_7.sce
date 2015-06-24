// Example 2.7
clc;
clear;
close;
format('v',5)
// given data
Vin= 10;// in V
V_K= 0.7;// in V
Vout=0;// in V
R_L= 1000;// in kΩ
r_B= 20;// in Ω
// The peak forward current,
I_P= (Vin-V_K)/(R_L+r_B);// in A
// The peak voltage 
V_P= I_P*R_L;// in V
// The peak inverse voltage 
PIV= Vin-Vout;// in V
disp(V_P,"The peak voltage in volts is : ");
disp(PIV,"The peak inverse voltage in volts is : ")
