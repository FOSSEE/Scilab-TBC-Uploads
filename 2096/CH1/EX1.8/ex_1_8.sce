// Example 1.8.sensitivity of gauge
clc, clear
// given :
C=60; // calibration pressure
F=(300*%pi)/180; //full scale deflection
L=F*90; // length of scale
S=L/C;
disp(S,"sensitivity,S = (mm/pa)")
//answer is calculated in the form of pi in the textbook

