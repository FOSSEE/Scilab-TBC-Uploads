//Example 12.1: link length and reise time
clc;
clear;
close;
af=2.5;//dB/km
ac=0.5;//dB/splice
nc=1;//
lc=1;//dB
ncc=2;//
plx=-10;//dBm
prx=-42;//dBm
Ms=6;//dB
L=((plx-prx-Ms-(lc*ncc))/(af+ac));//
TTX=12;//NS
TRX=11;//NS
NS1=3;//NS/KM
NS2=1;//NS/KM
tmat=(NS1*L);//ns
tint=(NS2*L);//ns
tsys=sqrt((TTX^2+tmat^2+tint^2+TRX^2));//ns
disp(L,"maximum possible link length in km is")
disp(round(tsys),"total rise time of the system in ns is")
