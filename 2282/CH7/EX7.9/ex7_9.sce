// Example 7.9, page no-278
clear
clc
e=35     //EIRP radiated by satellite in dBW
g=50     //receiver antenna gain in dB
e1=30    //EIRP of interfacing satellite in dBW
theeta=4 //line-of-sight between earth station and interfacing sattelite

x=(e-e1)+(g-32+25*log10(theeta))
printf("carrier-to-interface (C/I) = %.2f dB",x)


