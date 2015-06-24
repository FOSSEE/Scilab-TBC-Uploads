 // Exa 3.18
format('v',9);
clc;
clear;
close;
// Given data 
VBE= 0.76;// in V
VT= 0.025;// in V
I_C= 10*10^-3;// in A
// Formula I_C= I_S*%e^(VBE/VT)
I_S= I_C/(%e^(VBE/VT));// in A
disp(I_S,"The value of I_S in amp is : ")
// Part(a) for VBE = 0.7 V
VBE= 0.7;// in V
I_C= I_S*%e^(VBE/VT)
disp(I_C*10^3,"For VBE = 0.7 V , The value of I_C in mA is : ")

// Part (b) for I_C= 10 µA
I_C= 10*10^-6;// in A
// Formula I_C= I_S*%e^(VBE/VT)
VBE= VT*log(I_C/I_S);
disp(VBE,"For I_C = 10 µA, The value of VBE in V is : ")
