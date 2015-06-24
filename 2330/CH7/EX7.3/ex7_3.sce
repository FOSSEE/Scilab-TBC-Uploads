// Example 7.3
format('v',5)
clc;
clear;
close;
// given data
R_E= 430;// in Ω
R_L= 100;// in Ω
R1= 10*10^3;// in Ω
R2= 10*10^3;// in Ω
bita= 200;// unit less
r_e= 2.5;// in Ω
r_L= R_E*R_L/(R_E+R_L);// in Ω
// The voltge gain 
A= r_L/(r_L+r_e);
disp(A,"The voltge gain is : ")
Zin_base= bita*(r_L+r_e);// in Ω
// The input impedence 
Zin= R1*R2*Zin_base/(R1*R2+R2*Zin_base+Zin_base*R1);// in Ω
Zin= Zin*10^-3;// in k ohm
disp(Zin,"The input impedence in kΩ is : ")
