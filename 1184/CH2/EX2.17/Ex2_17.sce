//Example 2-17, Page No - 50

clear 
clc

f1= 7.93*10^6
f2= 8.07*10^6

bw= f2-f1
fr=(f1*f2)^0.5
Q= fr/bw

printf('\n The bandwidth is %.1f Khz',bw/10^3)
printf('\n The resonant frequency is %.1f Mhz',fr/10^6)
printf('\n The Q of resonant circuit is %.2f',Q)
