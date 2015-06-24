// Example 6.7, page no-238
clear
clc
cr=20*10^6           //chip rate in Mbps
ir= 20*10^3          //information bit rate 
g=10*log10((cr)/(ir))
printf("Noise reduction achhievable = Processing gain = %.0f dB",g)
