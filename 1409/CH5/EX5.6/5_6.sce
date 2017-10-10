clc;
//page no 5-12
//Example 5.6
//Given carrier frequency is 93.2MHz and frequency of modulated wave is 5kHz and the frequency deviation is 40kHz
fc=93.2*10^6;//in Hz
fm=5*10^3;//in Hz
fd=40*10^3;
cs=2*fd*10^(-3);
disp(+'kHz',cs,'Carrier swing is ');
Hf=(fc+fd)*10^(-6);
disp(+'MHz',Hf,'The highest frequency reached is ');
Lf=(fc-fd)*10^(-6);
disp(+'MHz',Lf,'The lowest frequency reached is ');
beta1=fd/fm;
disp(beta1,'Modulation index is');
