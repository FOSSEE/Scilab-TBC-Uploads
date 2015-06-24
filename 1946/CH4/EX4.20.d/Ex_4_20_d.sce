// Example 4.20.d;/bANDWIDTH LENGTH PRODUCT
clc;
clear;
close;
d=0.02;// Change in refractive index
n1=1.5;//Core refrctive index
L=3*10^3;//Length in meter
C=2.998*10^8;//Speed of light in m/s
dts=round(((L*n1*d)/C)*10^9);//DELAY IN NS
Bt=(1/(2*dts*10^9))*10^12;//Bit rate in Mbits/sec
BL=Bt*L*10^-3;// bANDWIDTH LENGTH PRODUCT IN kM
disp(BL,"bANDWIDTH LENGTH PRODUCT IN Mega Hertz kM")
