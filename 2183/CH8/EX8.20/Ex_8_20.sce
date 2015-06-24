// Example 8.20;//maximum length of the system
clc;
clear;
close;
af=0.20;//dB/km
ac1=0.05;//dB/km
k=4;//
b=1.2;//G bit/s
c=3*10^8;//m/s
h=1.55;//micro meter
sndb=17
sn=10^(sndb/10);//
l=100;//km
hc=6.63*10^-34;//
lt=((10^-3*h*10^-6*(10^-((af+ac1)*(l/10)))*l*10^3)/(k*hc*c*b*10^12*sn));//
disp(lt,"maximum length of the system in km is")
//answer is wrong in the textbook
