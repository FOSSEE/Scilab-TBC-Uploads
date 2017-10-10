//Example 8_8 page no:311
clc;
R=10;
L=0.1;
C=10*10^-6;
fr=(1/(2*%pi))*(sqrt((1/(L*C))-((R^2)/(L^2))));
disp(fr,"the resonant frequency is (in Hz)");
