// Example 7.11, page no-279
clear
clc

//carrier sinal strength at sattelite by uplink
u=10000    // equivalent to 40dB

//carrier sinal strength at eart station by downlink 
d=3162.28 //equivalent to 35dB

x=1/((1/u)+(1/d)) 
printf("Total carrier-to-interference ratio is %.2f = %.1f dB",x,10*log10(x))
