clear ;
clc;

// Example 3.2
printf('Example 3.2\n\n');
//Page no. 80
// Solution

// Basis 100kg mol gas
ml1 = 20.0 ;//[kg mol]
ml2 = 30.0 ;//[kg mol]
ml3 = 40.0 ;//[kg mol]
ml4 = 10.0 ;//[kg mol]
mw1 = 44.0  ;//molecular weight of CO2
mw2 =  28.0  ;//molecular weight of CO
mw3 =  16.04 ; //molecular weight of CH4
mw4 =  2.02  ;//molecular weight of H2
m1 = mw1*ml1;
m2 = mw2*ml2;
m3 = mw3*ml3;
m4 = mw4*ml4;
printf(' Component      kg mol        Mol.Wt.    kg.      \n')
printf(' CO2            %.2f         %.2f      %.0f     \n',ml1,mw1,m1);
printf(' CO             %.2f         %.2f      %.0f     \n',ml2,mw2,m2);
printf(' CH4            %.2f         %.2f      %.0f     \n',ml3,mw3,m3);
printf(' H2             %.2f         %.2f       %.0f     \n',ml4,mw4,m4);
printf('\n Total          %.2f        %.2f      %.0f       \n',ml1+ml2+ml3+ml4,mw1+mw2+mw3+mw4,m1+m2+m3+m4);
av_m = (m1+m2+m3+m4)/100 ;//[kg]
printf('\nAverage molecular mass of gas is %.1f kg.\n',av_m);