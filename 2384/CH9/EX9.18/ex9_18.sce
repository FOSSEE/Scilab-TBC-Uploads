// Exa 9.18
clc;
clear;
close;
format('v',6)
// Given data
Turnratio = 5;
R1 = 0.5;// in ohm
R2 = 0.021;// in ohm
X1 = 3.2;// in ohm
X2 = 0.12;// in ohm
Rc = 350;// in ohm
Xm = 98;// in ohm
N1 = 5;
N2 = 1;
K = N2/N1;
// Evaluation of the equivalent parameters referred to secondary side 
R2e = R2 + ((K^2)*R1);// in ohm
disp("The equivalent parameters referred to secondary side are : ")
disp("The value of  R_2e  is : "+string(R2e)+" Ω")
X2e = X2 + ((K^2)*X1);// in ohm
disp("The value of  X_2e  is : "+string(X2e)+" Ω")
R_c = (K^2)*Rc;// in ohm
disp("The value of  R''c  is : "+string(R_c)+" Ω")
X_m = (K^2)*Xm;// in ohm
disp("The value of  X''m  is : "+string(X_m)+" Ω")
