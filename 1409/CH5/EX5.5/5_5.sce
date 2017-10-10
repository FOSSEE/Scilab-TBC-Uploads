clc;
//page no 5-11
//Example 5.5
//The modulating voltage of 2.5V produces frequency deviation of 5kHz
f=500;//Modulation frequency in Hz
f2=250;//in Hz
fd=5;//in kHz
amp=2.5;//in V
kf=fd/amp;//frequency deviation constant in kHz/V
disp(+'kHz/V',kf,'Frequency deviation constant is ');
//modulating voltage is 7.5V
amp1=7.5;//in V
fd1=kf*amp1;//in kHz
disp(+'kHz',fd1,'Frequency deviation produced when modulating voltage is 7.5V is ');
//When modulating voltage is 10V
amp2=10;//in V
fd2=kf*amp2;
disp(+'kHz',fd2,'Frequency deviation when modulating voltage is 10V is ');
//Modulation index be denoted by beta
beta1=(fd*10^3)/f;
disp(beta1,'Modulation index 1 is ');
beta2=(fd1*10^3)/f;
disp(beta2,'Modulation index 2 is ');
beta3=(fd2*10^3)/f2;
disp(beta3,'Modulation index 3 is');
