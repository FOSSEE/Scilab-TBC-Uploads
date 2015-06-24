clc;
warning("off");
printf("\n\n example11.3 - pg502");
// given
Ra=8.502*10^-4;  //[h*degF*Btu^-1]
Rb=5.014;  //[h*degF*Btu^-1]
r1=(2.067/2)/(12);  //[ft]
r2=r1+0.154/12;  //[ft]
r3=r2+3/12;  //[ft]
d1=2*r1;
d0=2*r3;
h0=25;  //[Btu/h*ft^2*degF]
h1=840;  //[Btu/h*ft^2*degF]
L=1;  //[ft] - considering 1 feet length
R0=1/(h0*%pi*d0*L);
R1=1/(h1*%pi*d1*L);
R=R0+R1+Ra+Rb;
disp(R);
deltaT=-400;  //[degF]
Qr=-(deltaT)/R;
disp(Qr);
// the heat loss calculated above is the heat loss per foot.therefore for 500 ft
L=500;
Qr=Qr*L;
printf("\n\n the heat loss for a 500 feet pipe is \n qr = %e Btu/h",Qr);

