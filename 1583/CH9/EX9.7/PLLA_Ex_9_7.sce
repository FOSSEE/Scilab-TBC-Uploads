clc
//Chapter 9:Phase locked loop Analysis 
//Example 9.7 page no 376
a=28//taking alpha as a
Ka=0.21*10^6
GF=20*log10(a)^1/2
disp(GF,'The value of gain is ')
disp('so we must determine where the uncompensated frequency response is -14.5dB ')
Wc=a^(1/4)*Ka^(1/2)
disp('The 28:1 lead ratio will increase the crossover frequency by a factor 2.3  The factor zero is placed at ')
Wz=Wc/sqrt(a)//systems zero
Wp=a*Wz//systems pole
mprintf('The crossover frequency is %3.2e rad/s \n The zero is placed at %d rad/s \n The pole is placed at %d rad/s ',Wc,Wz,Wp)
