//Star to delta conversion of a cicuit

clc;
clear;

Zp=5;
Zq=10;
Zr=%i*10;

Zpq=((Zp*Zq)+(Zq*Zr)+(Zr*Zp))/Zr;
Zqr=((Zp*Zq)+(Zq*Zr)+(Zr*Zp))/Zp;
Zrp=((Zp*Zq)+(Zq*Zr)+(Zr*Zp))/Zq;

printf(' Delta Equivalent : \n')
printf(' Zpq = %g + j(%g) ohm \n',real(Zpq),imag(Zpq))
printf(' Zqr = %g + j(%g) ohm \n',real(Zqr),imag(Zqr))
printf(' Zrp = %g + j(%g) ohm \n',real(Zrp),imag(Zrp))
