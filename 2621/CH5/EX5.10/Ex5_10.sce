// Example 5.10
clc;
clear;
close;
// Given data
format('v',6);
I_Bmax= 500;// in nA
I_Bmax= I_Bmax*10^-9;// in A
VCC= 10;// in V
f= 10*10^3;// in Hz
I1= 500*10^-6;// current through R1 in A (assume)
Vout= (VCC-1);//output voltage in V
// Rf+R1= Vout/I1 and Rf= 2*R1, so
R1= Vout/(3*I1);// in Ω
R1= R1*10^-3;// in kΩ
disp("The value of R1 is : "+string(R1)+" kΩ (standard value 5.6 kΩ)");
R1= 5.6;// in kΩ (standard value)
Rf= 2*R1;// in kΩ
disp("The value of Rf is : "+string(Rf)+" kΩ (standard value 12 kΩ)");
R= R1;// in kΩ
R= R*10^3;// in Ω
C= 1/(2*%pi*f*R);// in F
C= C*10^12;// in pF
disp("The value of C is : "+string(C)+" pF");
