clc;
//page no 5-13
//Example 5.7
//Given carrier frequency is 50.4MHz and th highest freuency reached is 50.405 MHZ
Hf=50.405*10^6;//in Hz
fc=50.4*10^6;
fd=(Hf-fc)*10^(-3);//in kHz
disp(+'kHz',fd,'Frequency deviation= ');
Cs=2*fd;
disp(+'kHz',Cs,'Carrier swing= ');
Lf=[fc-(fd*10^(3))]*10^(-6);
disp(+'MHz',Lf,'Lowest frequency attained= ');
