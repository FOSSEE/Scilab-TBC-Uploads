// Example 5.5
clc;
clear;
close;
// Given data
format('v',5);
f= 800;// in Hz
C= 0.01;// in µF (assumed)
C= C*10^-6;// in F
D= 60;// in duty cycle in %
// D= (R_A+R_B)/(R_A+2*R_B)*100= 60 or
// R_B= 2*R_A
R_A= 1.44/(f*5*C);// in Ω  (From f=1.44/((R_A+2*R_B)*C))
R_A= R_A*10^-3;//in kΩ
R_B= 2*R_A;// in kΩ
C= C*10^6;//in F
disp(R_A,"The value of R_A in kΩ is : ");
disp(R_B,"The value of R_B in kΩ is : ");
disp(C,"The value of C in µF is : ")

