// Example 9.5.B;//maximum repeater spacing 
clc;
clear;
close;
ber=10^-9;//
x1=-2*log10(ber);//
hc=6.63*10^-34;//
c=3*10^8;//m/s
bt=50;//Mbits/s
h=1.55;//micro meter
ps=(((x1/2)*hc*c*bt*10^6)/(h*10^-6));//nW
psdb=10*log10(ps*10^3);//
cl=0.25;//dB/km
x=4;//dBm
y=x-psdb;//
mrs1=y/cl;//km
disp(mrs1,"maximum repeater spacing in km at 50 M-bit/s  system (PSK) in km is")
bt1=1;//Gbit/s
ps1=(((x1/2)*2*hc*c*bt1*10^9)/(h*10^-6));//nW
psdb1=10*log10(ps1*10^3);//
cl=0.25;//dB/km
x=4;//dBm
y1=x-psdb1;//
mrs2=y1/cl;//km
disp(mrs2,"maximum repeater spacing in km at 1 G-bit/s  system (PSK) in km is")
//for 1 Gbit/s systme answer is wrong in the textbook
