//Example_a_16_15 page no:792
clc;
Y11_t=6/7;
Y22_t=5/7;
Y12_t=-4/7;
Y21_t=-4/7;
Y11_pi=2;
Y12_pi=-1;
Y22_pi=3;
Y21_pi=-1;
//calculating the admittance values
Y11=Y11_t+Y11_pi;
Y12=Y12_t+Y12_pi;
Y21=Y21_t+Y21_pi;
Y22=Y22_t+Y22_pi;
disp(Y11,"the value of Y11 is ");
disp(Y12,"the value of Y12 is ");
disp(Y21,"the value of Y21 is ");
disp(Y22,"the value of Y22 is ");
//Y12 and Y21 are calculated wrongly in textbook, the correct calculation is done here
