// Exa 3.20
clc;
clear;
close;
// Given data 
VBE= 0.7;// in V
VCC= 10.7;// in V
R_C= 10;//in kΩ
R_C=R_C*10^3;// in Ω
R_B= 10;//in kΩ
R_B=R_B*10^3;// in Ω
I1= (VCC-VBE)/R_C;// in A
disp(I1*10^3,"The value of I1 in mA is : ")
// Part (b)
VC= -4;//in V
VB= -10;// in V
R_C= 5.6;//in kΩ
R_C=R_C*10^3;// in Ω
R_B= 2.4;//in kΩ
R_B=R_B*10^3;// in Ω
VCC=12;// V
I_C= (VC-VB)/R_B;// in A
V2= VCC- (R_C*I_C);
disp(V2,"The value of V2 in volt is : ");
// Part (c)
VCC= 0;
VCE= -10;// in V
R_C= 10;//in kΩ
R_C=R_C*10^3;// in Ω
I_C= (VCC-VCE)/R_C;// in A
V4= 1;// in V
I3= I_C;// in A (approx)
disp(V4,"The value of V4 in volt is : ");
disp(I3*10^3,"The value of I3 in mA is : ")
// Part (d)
VBE= -10;// in V
VCC= 10;// in V
R_B= 5;//in kΩ
R_B=R_B*10^3;// in Ω
R_C= 15;//in kΩ
R_C=R_C*10^3;// in Ω
// I5= I_C and 
// I5= (V6-0.7-VBE)/R_B and I_C= (VCC-V6)/R_C
V6= (VCC*R_B+R_C*(0.7+VBE))/(R_C+R_B);
disp(V6,"The value of V6 in volt is : ")
I5= (V6-0.7-VBE)/R_B;// in A
disp(I5*10^3,"The value of I5 in mA is : ")


