// Example 3.20
clc;
clear;
close;
// Given data
format('v',9);
R1= 3.3;// in kΩ
R2= 3.3;// in kΩ
R3= 1.2;// in kΩ
R4= 1.2;// in kΩ
Rf= 3.9;// in kΩ
R5= 3.9;// in kΩ
Rp= 2.5;// in kΩ
A= 2*10^5;// unit less
f0= 5;// in Hz
Rin= 2*10^6;// in Ω
Rout= 75;// in Ω
Ad= -(1+2*R1/Rp)*Rf/R3;// voltage gain
disp(Ad,"The voltage gain is : ");
Rinf= Rin*(1+A*(R1+Rp)/(2*R1+Rp));//input resistance in Ω
Rinf= Rinf*10^-9;// in GΩ
disp(Rinf,"The input resistance in GΩ is : ");
Routf= Rout/(1+A/Ad);// output resistance in Ω
disp(Routf,"The output resistance in Ω is : ");
f_f= A*f0/abs(Ad);// bandwidth in Hz
f_f= f_f*10^-3;// in kHz
disp(f_f,"The bandwidth in kHz is : ");



