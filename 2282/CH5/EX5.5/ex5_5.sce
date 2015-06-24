// Example 5.5, page no-190 
clear
clc

//comparing given equation with stanard equation
m=6               //Modulation Index
wc=7.8*10^8       //unmodulated carrier frequency
wm=1450           //Modulating frequency

fc=wc/(2*%pi)
fm=wm/(2*%pi)
printf("Unmodulated carrier frequency, fc = %.2f MHz \n The modulation index m = %d \n Modulating frequency, fm = %.2f Hz",fc/10^6,m,fm)
