// Example 3.10
clc;
clear;
close;
// Given data
format('v',4);
Av= -30;// voltage gain
Rf= 1*10^6;// in Ω
//Since, Av= Vo/Vi=-Rf/R1, so
R1= -Rf/Av;// in Ω
R1= R1*10^-3;// in kΩ
Rf= Rf*10^-6;// in MΩ
disp(Rf,"The value of Rf in MΩ is : ")
disp(R1,"The value of R1 in kΩ is : ");

