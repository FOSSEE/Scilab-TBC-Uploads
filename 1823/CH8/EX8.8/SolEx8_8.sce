//Determine (a) the low-frequency gain, (b) the midfrequency gain, and (c) the low-frequency cutoff point.
//Example 8.8 page no 244
clear
clc
hie2=1500    //Ω
Rb2=5000    //kΩ
Z01=10
C2=1*10^-6   
Zin2=(hie2*Rb2/(hie2+Rb2))
printf("\n The value of Zin2=%0.3f Ohm",Zin2)
Av=7881.3
fl=1/(2*%pi*C2*(Zin2+Z01*10^3))
printf("\n The value of fl=%0.3f Hz",fl)
