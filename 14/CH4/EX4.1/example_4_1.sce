//Chapter 4
//Example 4.1
//capacitivesusceptance
//Page 75
clear;clc;

//Given Values
D = 20; //in ft
f = 60; //in Hz

//From Table A.1 and A.3
d = 0.642 //in inches
X_a = 0.1074e6; //in ohm-mi
X_d = 0.0889e6; //in ohm-mi

//finding radius
r = d /(2 * 12); //divided by 12 convert in to ft

//calculations using D and r
disp('Calculations using conductor spacing and radius')
X_c = 1.779 * log(D / r) / f;
B_c = 1 / X_c;
printf("\n\n Capactive reatance = %.4fe6 ohm mi to neutral \n\n",X_c)
printf("\n\n Capactive susceptance = %.4fe-6 mho/mi to neutral \n\n",B_c)

//calculations using capacitive reactance at 1-ft spacing and spacing factor
disp('Calculations using capacitive reactance at 1-ft spacing and spacing factor')
X_c1 = X_a + X_d;
printf("\n\n Capactive reatance = %.4fe6 ohm mi per conductor \n\n",X_c1 / 10^6)
X_c11 = 2 * X_c1;
B_c1 = 1 / X_c11;
printf("\n\n Line-to-line capactive reatance = %.4fe6 ohm mi \n\n",X_c11 / 10^6)
printf("\n\n Line-to-line capactive susceptance = %.4fe-6 mho mi \n\n",B_c1 * 10^6 )