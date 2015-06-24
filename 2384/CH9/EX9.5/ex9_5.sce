// Exa 9.5
clc;
clear;
close;
format('v',8)
// Given data
V1 = 2200;// in V
V2 = 110;// in V
R1 = 1.75;// in ohm
R2 = 0.0045;// in ohm
X1 = 2.6;// in ohm
X2 = 0.0075;// in ohm
K = V2/V1;
//R1e = R1+R_2 = R1 + (R2/(K^2));
R1e = R1 + (R2/(K^2));// in ohm
disp(R1e,"Equivalent resistance reffered to primary  in ohm is");
// R2e = R2+R_1 = R2+((K^2)*R1);
R2e = R2+((K^2)*R1);// in ohm
disp(R2e,"Equivalent resistance reffered to secondary  in ohm is");
//X1e = X1+X_2 = X1+(X2/(K^2));
X1e = X1+(X2/(K^2));// in ohm
disp(X1e,"Equivalent reactance reffered to primary  in ohm is");
// X2e = X2+X_1 = X2 + ((K^2)*X1);
X2e = X2 + ((K^2)*X1);// in ohm
disp(X2e,"Equivalent reactance reffered to secondary  in ohm is");
Z1e= R1e+%i*X1e;// in ohm
Z2e= R2e+%i*X2e;// in ohm
disp(abs(Z1e),"Equivalent impedance reffered to primary in ohm is : ")
disp(abs(Z2e),"Equivalent impedance reffered to secondary in ohm is : ")

