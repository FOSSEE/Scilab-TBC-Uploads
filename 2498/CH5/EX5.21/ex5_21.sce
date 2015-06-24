// Exa 5.21
clc;
clear;
close;
format('v',6)
// Given data
D = 10/100;
Df = 1/100;
A = 200;
Vs = 10;// in mV
Vs = Vs * 10^-3;// in V
// Df = D/(1+A*Beta);
Beta = (((D/Df)-1)/A);
// gain with feedback 
Af = A/(1+(A*Beta));
disp(Af,"The gain with feedback is : ");
// The output voltage 
Vo = Af*Vs;// in V
disp(Vo,"The output voltage in V is : ");
// The input voltage 
Vin = Df+(-Beta*Vo);// in V
disp(Vin,"The input voltage in V is : ");
