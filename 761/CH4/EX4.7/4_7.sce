clc;
//page no 149
//prob no. 4.7
//An FM signal has deviation 3kHz & modulating freq 1kHz with total power Pt=5W developed across 50 ohm with fc=160 MHz
dev=3*10^3;fm=10^3;Pt=5;Rl=50;fc=160*10^6;
//a)Determination of RMS signal voltage
Vt=sqrt(Pt*Rl);
disp('V',Vt,'a)The rms signal voltage is');
/////////////b)Determination of rms voltage at carrier freq
//for that modulation index needs to be found out
mf=dev/fm;
//From bessel function table, the coeff for the carrier first 3 side bands
J=[0.26,0.34,0.49,0.31];
disp('b)The rms voltage of side bands are')
for i=1:4,
    V(i)=J(i)*Vt;
end;
disp('V',V(4),'V3=','V',V(3),'V2=','V',V(2),'V1=','V',V(1),'Vc=');
///////////c)Determination of freq of each side bands////////////////
disp('c)The 3 side bands at different freq. are ')
for j=1:3,
    f_usb(j)=fc/10^6+(fm*j/10^6);
end
disp('MHz',f_usb(3),'f_usb3=','MHz',f_usb(2),'f_usb2=','MHz',f_usb(1),'f_usb1=');

for j=1:3,
    f_lsb(j)=fc/10^6-(fm*j/10^6);
end
disp('MHz',f_lsb(3),'f_lsb3=','MHz',f_lsb(2),'f_lsb2=','MHz',f_lsb(1),'f_lsb1=');
////////////d)Determination of power of each side band/////////////////
for i=1:4,
    P(i)=((V(i))^2)/Rl;
    a(i)=(P(i))/(10^-3);
end;
disp('d)The power of each side band is');
disp('W',P(4),'P3=','W',P(3),'P2=','W',P(2),'P1=','W',P(1),'Pc=',);
//////////e)Determination of power that is uncounted
P=P(1)+2*(P(2)+P(3)+P(4));
//As total power is 5 W
P_x=Pt-P;
//Percentage of total power uncounted
Px=(P_x/P)*100;
disp('%',Px,'e)Percentage total power which is uncounted is');
//////////f)Ploting the signal in freq domain/////////////////////
//Converting power in dBm
for i=1:4,
    //a(k)=(P(k))/(10^-3);
   P_dBm(i)=10*log10(a(i)); 
end;
disp('f)Power of each side bands in dBm is')
disp('dBm',P_dBm(4),'P3(dBm)=','dBm',P_dBm(3),'P2(dBm)=','dBm',P_dBm(2),'P1(dBm)=','dBm',P_dBm(1),'Pc(dBm)',);
x=[159.997:0.001:160.003];
y=[26.8,30.8,27.6,25.3,27.6,30.8,26.8];
plot(x,y);
