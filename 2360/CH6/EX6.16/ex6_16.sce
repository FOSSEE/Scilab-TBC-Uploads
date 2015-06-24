// Exa 6.16
format('v',7);clc;clear;close;
// Given data
f1 = 1;//frequency in MHz
f1= f1*10^6;// in Hz
f2 = 2;//frequency in MHz
f2= f2*10^6;// in Hz
C1 = 500;//capacitance in pF
C1 = C1 * 10^-12;// in F
C2 = 110;//capacitance in pF
C2 = C2 * 10^-12;// in F
// f1 = 1/(2*%pi*(sqrt(L*(C1+Cd))))     (i)
// f2 = 1/(2*%pi*(sqrt(L*(C2+Cd))))     (ii)
// From eq(i) and (ii)
Cd= (f2^2*C2-f1^2*C1)/(f1^2-f2^2);// in F
// From eq(i)
C=C1+Cd;
L=1/((C1+Cd)*(2*%pi*f1)^2);// in H
L= L*10^6;//inductance in µH
Cd= Cd*10^12;// self capacitance in pF
disp(Cd,"The self capacitance in pF is");
disp(L,"The inductance in µH is : ")
