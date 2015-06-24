// Exa 3.19
format('v',9);
clc;
clear;
close;
// Given data 
VBE= 0.7;// in V
VT= 0.025;// in V
I_B= 100;// in µA
I_B=I_B*10^-6;// in A
I_C= 10*10^-3;// in A
// Formula I_C= I_S*%e^(VBE/VT)
I_S= I_C/(%e^(VBE/VT));// in A
alpha= I_C/(I_C+I_B);
bita= I_C/I_B;
IS_by_alpha= I_S/alpha;// in A
IS_by_bita= I_S/bita;// in A
disp(alpha,"The value of alpha is : ");
disp(bita,"The value of bita is : ");
disp(IS_by_alpha,"The value of Is/alpha in A is :");
disp(IS_by_bita,"The value of Is/bita in A is : ");
