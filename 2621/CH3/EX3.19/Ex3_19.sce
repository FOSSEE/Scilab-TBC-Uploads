// Example 3.19
clc;
clear;
close;
// Given data
format('v',4);
Vin= 100*10^-3;// in V
Vout= 4.25;// in V
R1= 100;// in Ω
// Formula Used : Vout= (1+2*Rf/Rf)*Vin
Rf= (Vout/Vin-1)*R1/2;// in Ω
Rf= Rf*10^-3;// in kΩ
disp(R1,"The value of R1 in Ω is : ")
disp(Rf,"The value of Rf in kΩ is : ")
disp("(Standard value of Rf is 2.2 kΩ)")


