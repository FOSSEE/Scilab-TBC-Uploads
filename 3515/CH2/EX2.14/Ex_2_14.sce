// Exa 2.14
format('v',7);
clc;
clear; 
close;
// Given data 
V_GS1= 1.5;// in V
Vt= 1;// in V
r_DS1= 1;// in kΩ
r_DS1= r_DS1*10^3;// in Ω
r_DS2= 200;// in kΩ
//  r_DS1= 1/(KnWbyL*(V_GS1-Vt))            (i)
//  r_DS2= 1/(KnWbyL*(V_GS2-Vt))            (i)
// dividing equation (i) by (ii)
V_GS2= (r_DS1/r_DS2)*(V_GS1-Vt)+Vt;// in V
disp(V_GS2,"To Optain rDS= 200, The value of V_GS should be (in volt)")
// For  V_GS= 1.5 ;// V
// W2= 2*W1;
// r_DS1/r_DS2= 2
r_DS2= r_DS1/2;// in Ω
disp(r_DS2,"For V_GS= 1.5 V , the value of r_DS2 in Ω is : ")
// For V_GS= 3.5 V
r_DS2= 200/2;// in Ω
disp(r_DS2,"For V_GS= 3.5 V , the value of r_DS2 in Ω is : ")
