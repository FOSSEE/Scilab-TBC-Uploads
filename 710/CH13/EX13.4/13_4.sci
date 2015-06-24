clc();
clear;
//To determine the signal attenuationnper kilometer 
pi=100;                            //mean optical power launched in micro meter
po=5;                              //mean optical power at fibre output
S=10*log10(pi/po);                 //signal attenuation un dB
l=6;                               //length in km
Sk=S/l                             //signal ayyenuation per kilometer
printf("The signal attenuation per kilometer is %f dB/km",Sk);