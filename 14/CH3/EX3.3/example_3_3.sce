//Chapter 3
//Example 3.3
//Partridge
//Page 57
clear;clc;

//Given Values
f = 60 //in Hz
D_m = 20 //in ft

//Inductive Reactance with D_s known
D_s = 0.0217 //in ft from Table A(appendix).1
X_L = 2.022e-3 * f * log(D_m/D_s)
disp('With GMR known')
printf("\n\n Inductive Reactance for one conductor,XL = %.3f ohm/mi \n\n",X_L)

//Inductive Reactance with D_s not known
disp('With GMR not known')
X_a = 0.465 //inductive reactance at 1 ft spacingin ohm per mi from Table A.1
X_d = 0.3635 //inductive reactance spacing factor in ohm per mi from Table A.1
printf("\n\n Inductive reactance of one conductor = %.4f ohm/mi \n\n",X_a + X_d)
disp('Since conductors composing the two lines are identical')
XL = 2 * (X_a + X_d)
printf("\n\n Inductive reactance,XL = %.3f ohm/mi \n\n",XL)
