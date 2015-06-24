//Example 2.7.1 page 2.37

clc;
clear;

t= 0.1*10^-6;
L=15;
del= t/L*10^9;  //convertin to nano secs...
printf("The Pulse Dispersion is %.2f ns",del);
B_opt= 1/(2*t)/10^6; //convertin to nano secs...
printf("\n\n The maximum possible Bandwidth is %d MHz",B_opt);
BLP = B_opt*L;
printf("\n\nThe BandwidthLength product is %d MHz.Km",BLP);
