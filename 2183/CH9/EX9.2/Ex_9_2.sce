// Example 9.2;//bandwidth
clc;
clear;
close;
snl=-55.45;//dBm
ps=10^(snl/10);//
n=0.8;//
h=1.54;//micro meter
hc=6.63*10^-34;//
c=3*10^8;//m/s
sndb=12;//
sn=10^(sndb/10);//
b=((n*ps*10^-3*h*10^-6)/(hc*c*sn));//
disp(b*10^-9,"bandwidth in GHz is")
//answer is wrong in the textbook
