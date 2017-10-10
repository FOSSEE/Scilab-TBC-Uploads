//Example 15.2
clc;

wc=20000;        //Cutoff frequency in rad/s
C=0.01*10^-6;   //Assumed value of capacitor
R=invr(wc*C);
x=ceil(R);
printf('\nResistence Value required is %.2f k ohm\n',x/1000)