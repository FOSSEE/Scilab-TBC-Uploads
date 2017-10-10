clc;
//page no 5-13
//Example 5.8
//Given carrier swing is 70kHz and frequency of modulating signal is 7kHz
Cs=70;//in kHz
fm=7;//in kHz
//Carrier swing=2*frequency deviation
fd=Cs/2;
disp(+'kHz',fd,'Frequency deviation is');
beta1=fd/fm;
disp(beta1,'Modulation index is');
