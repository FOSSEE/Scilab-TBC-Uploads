clc;
//page no 5-51
//Example 5.17
//Given maximum value of frequency deviation is 75kHz and modulation frequency is 15kHz
fd=75;//in kHz
fm=15;//in kHz
//Bandwidth using carson's rule
beta1=fd/fm;
Bw=2*(beta1+1)*fm;
disp(+'kHz',Bw,'Bandwidth of FM signal is');
