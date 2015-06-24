//Example No. 12.9.2
clc;
clear;
close;
format('v',5);
GP=1000;//unitless(Power gain)
lambda=10;//cm(Wavelength)
D=sqrt(GP/6)*(lambda/100);//m(Diameter)
disp(D,"Diameter of mouth in meter : ");
HPBW=58*(lambda/100)/D;//degree(HPBW)
disp(HPBW,"Half power beam width(HPBW in degree) : ");
