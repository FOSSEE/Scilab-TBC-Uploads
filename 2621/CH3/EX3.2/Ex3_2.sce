// Example 3.2
clc;
clear;
close;
// Given data
format('v',6);
R1= 2;// in kΩ
Rf_min= 0;
Rf_max= 100;// in kΩ
// Formula Used : Af= 1+Rf/R1
Af_max= 1+Rf_max/R1;// maximum closed loop voltage gain
Af_min= 1+Rf_min/R1;// minimum closed loop voltage gain
disp(Af_max,"The maximum closed loop voltage gain is : ");
disp(Af_min,"The minimum closed loop voltage gain is : ");


