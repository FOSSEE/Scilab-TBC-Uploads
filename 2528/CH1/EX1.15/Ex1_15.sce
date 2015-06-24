// Chapter 1
//page 15
//Example no 1-15
//Given
clc;
f=1.6*10^6;        //in Hz
fc=150*10^3;            //in Hz
Av=-10*log10(1+(f^2)/(fc^2));
printf("\n The Gain is %.1f dB \n ",Av);// Result
w=-(%pi/2)+atan(fc/f);
printf("\n Phase value is  %.1f degree",w*180/%pi);// Result
