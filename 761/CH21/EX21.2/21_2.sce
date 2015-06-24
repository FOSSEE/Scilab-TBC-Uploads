clc;
// page no 807
// prob no 21.2
N=12; m=120;
a=20000;
th=30;//in min/day this means
H=0.5;
tp=10;
//part a)Calculation of the average and peak traffic in erlangs for the whole system
// The average traffic is
T=a*H/24;
disp('E',T,'a) The average traffic is');
// The peak traffic is 
T1=(a*tp)/60;
disp('E',T1,'The peak traffic is');
//part b)Calculation of the average and peak traffic in erlangs for one cell
// The average traffic per cell is
t=T/m;
disp('E',T,'b) The average traffic per cell is');
// The peak traffic per cell is
t=T1/m;
disp('E',T1,'The peak traffic per cell is');
// part c)
// For average traffic at 3.47E, the blocking probability is much less than 1%, since the average no of call is much less than the no of channels. However, the blocking probability increases to just over 5%