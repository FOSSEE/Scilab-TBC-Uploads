//Ex14_11 Pg-699
clc

L=500/1000 //length of fiber in m
Pin=1*10^(-3) //input power in watt
Pout=85/100*10^(-3) //output power in watt

alpha=(10/L)*log10(Pin/Pout) //loss
printf("Loss in the fiber = %.2f dB/Km",alpha)
