// Example 9.4 //minimum incoming power level
clc;
clear;
close;
ber=10^-9;//
x=-2*log10(ber);//
hc=6.63*10^-34;//
c=3*10^8;//m/s
bt=500;//Mbits/s
h=1.55;//micro meter
ps=((x*2*hc*c*bt*10^6)/(h*10^-6));//nW
disp(ps*10^9,"minimum incoming power level in nano Watts is")
