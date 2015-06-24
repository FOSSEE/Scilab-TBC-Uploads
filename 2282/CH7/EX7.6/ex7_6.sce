// Example 7.6, page no-272
clear
clc

L=1.778           //Loss factor of the feeder 2.5dB equivalent
ts=30             //Noise temperature of sattelite receiver in K
t=50              //Noise temperature in K
ti=290            // reference temperature in K
x=t/L
y=ti*(L-1)/L
Te=x+y+ts
F1=1+(ts/ti)
F2=1+(Te/ti)
printf("contribution of antenna noise temperature when\n referred to the input of the receiver is %.1f K",x)
printf("\n\n Contribution of feeder noise when referred to the\n input of the receiver is %.1f",y)
printf("\n\n1. Noise figure in first case = %.3f = %.3f dB",F1,10*log10(F1))//answer in book is different 0.426dB
printf("\n\n2. Noise figure in second case = %.3f = %.2f dB",F2,10*log10(F2))
