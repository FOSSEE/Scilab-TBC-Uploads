//Example 12.2: link length and bandwidth
clc;
clear;
close;
format('v',4)
disp("part (a)")
af=3;//dB/km
ac=0.5;//dB/splice
nc=1;//
lc=1;//dB
ncc=1.5;//
plx=0;//dBm
prx=-25;//dBm
Ms=7;//dB
L=((plx-prx-Ms-(lc*ncc))/(af+ac));//
TTX=12;//NS
TRX=11;//NS
NS1=3;//NS/KM
NS2=1;//NS/KM
tmat=(NS1*L);//ns
tint=(NS2*L);//ns
tsys=sqrt((TTX^2+tmat^2+tint^2+TRX^2));//ns
disp(L,"maximum possible link length in km is")
format('v',3)
disp("part (b)")
af=3;//dB/km
ac=0.5;//dB/splice
nc=1;//
lc=1;//dB
ncc=1.5;//
plx=-0;//dBm
prx=-25;//dBm
Ms=7;//dB
L=((plx-prx-Ms-(lc*ncc))/(af+ac));//
TTX=1;//NS
TRX=5;//NS
NS1=9;//NS/KM
NS2=2;//NS/KM
tf=((NS1*L)^2+(NS2*L)^2);//
tsys=sqrt((TTX^2+tf+TRX^2));//ns
df=0.35/(tsys*10^-3);//
disp(round(df),"system bandwidth in MHz iz")
