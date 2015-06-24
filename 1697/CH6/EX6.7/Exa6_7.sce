//Exa 6.7
clc;
clear;
close;
//Given Data:
f=15;//in GHz
f=f*10^9;//in Hz
Gp_dB=75;//in dB
c=3*10^8;//Speed of light in m/s
lambda=c/f;//in meter
//Formula : Gp=9.87*(d/lambda)^2
//Formula : Gp_dB=10log10(Gp)
d=sqrt((10^(Gp_dB/10))*lambda^2/9.87);//in meter
disp(d,"Diameter of a parabolic reflector in meter :");