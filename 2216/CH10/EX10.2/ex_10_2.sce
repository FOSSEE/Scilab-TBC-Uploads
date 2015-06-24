//Example 10.2;small-signal gain of EDFA and maximum pssible achievable gain
clc;
clear;
close;
ts=0.80;//
sa=4.6444*10^-25;//in m^2
n12=6*10^24;//m^-3
se=4.644*10^-25;//m^2
n21=0.70;//
l=7;//in meter
x=((sa*n12*l*(((se/sa)+1)*n21-1)));//
G=ts*exp(x);//
Gdb=10*log10(G);//
Gmax=exp(se*n12*l);//
Gmaxdb=10*log10(Gmax);//
disp(Gdb,"small signal gain of EDFA in dB is")
disp(Gmaxdb,"maximum possible achievable gain in dB is")
