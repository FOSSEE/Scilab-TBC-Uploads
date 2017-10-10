clc;
//page no 5-13
//Example 5.9
//Given maximum and minimum frequency as 99.047MHz and 99.023MHz respectively. Frequency of modulating signal is 7kHz
Hf=99.047*10^6;//in Hz
Lf=99.023*10^6;//in Hz
fm=7;//in kHz
Cs=(Hf-Lf)*10^(-3);
disp(+'kHz',Cs,'Carrier swing is');
fd=Cs/2;
disp(+'kHz',fd,'Frequency deviation is');
fc=(Hf-(fd*10^3))*10^(-6);
disp(+'MHz',fc,'Carrier frequency is');
beta1=fd/fm;
disp(beta1,'Modulation index is');
