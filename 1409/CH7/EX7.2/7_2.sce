clc;
//page no 7-18
//Example 7.2
//Given
fc=13.5;//in MHz
fd=8.5;//in kHz
//At point 1
disp("At point 1");
fc1=2*fc;
fd1=2*fd;
disp(+'MHz',fc1,'Carrier frequency is');
disp(+'kHz',fd1,'Frequency deviation is');
//At point 2
disp("At point 2");
fc2=3*fc1;
fd2=3*fd1;
fmax2=(fc2+fd2*10^(-3));
fmin2=(fc2-fd2*10^(-3));
disp(+'MHz',fc2,'Carrier frequency is');
disp(+'kHz',fd2,'Frequency deviation is');
disp(+'MHz',fmax2,'fmax=');
disp(+'MHz',fmin2,'fmin=');
//At poiint 3
disp("At point 3");
//Oscillator frequency is 20MHz
Of=20;//in MHz
fc3=fc2+Of;
fmax3=fmax2+Of;
fmin3=fmin2+Of;
fd3=(fmax3-fc3)*10^3;//in kHz
disp(+'MHz',fc3,'Carrier frequency is');
disp(+'MHz',fmax3,'fmax=');
disp(+'MHz',fmin3,'fmin=');
disp(+'kHz',fd3,'Frequency deviation is');
