clc;
//page no 5-22
//Example 5.11
//Given frequency deviation is 50kHz and maximum modulating frequency is 15kHz
fd=50;//in kHz
fm=15;//in kHz
beta1=fd/fm;
disp(beta1,'Modulation index=');
//Using Carson's rule
BW=2*(beta1+1)*fm;
disp(+'kHz',BW,'Transmission bandwidth is');
