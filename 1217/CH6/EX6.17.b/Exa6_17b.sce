// Exa 6.17b
clc;
clear;
close;
// given data 
R=10;//in Kohm
R1=R;//in Kohm
R2=R;//in Kohm
R3=R;//in Kohm
Rf=5.6;//in Kohm
R4=Rf;//in Kohm
R5=Rf;//in Kohm
RA=2.7;//in Kohm
RB=1.5;//in Kohm
C=0.01;//in uF
C1=C;//in uF
C2=C;//in uF
fc=1/(2*%pi*Rf*1000*C*10^-6);//in Hz
Klp=1.238;//unitless
fH=fc*Klp;//in Hz
Khp=1/Klp;//unitless
fL=fc*Khp//in Hz
disp(fc/1000,"Critical frequency in KHz is : ");
disp(fH/1000,"High cut-off frequency in KHz is : ");
disp(fL/1000,"Low cut-off frequency in KHz is : ");//