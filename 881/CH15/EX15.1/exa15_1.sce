clc;
//Example 15.1
//Page No 616



//solution

Rr=72;
Re=8;
D=20;
Pin=100;

//(a)

disp("(a)Antenna efficiency is found by substituting into equation 15-3 ");

n=(Rr/[Rr+Re])*100;

disp('%',n,"n = ");

//(b)

disp("(b)Antenna gain ");

A=(n/100)*(D);

disp('and','dB',A,"A = ");

A1=10*log10(A);

disp('dB',A1,"A = ");

//(c)

disp("(c)Radiated power");

Prad=(n/100)*Pin;

disp('W',Prad,"Prad = ");

prad=10*log10(Prad/0.001);

disp('dBm',prad,"Prad(dBm) = ");

pRad=10*log10(Prad);

disp('dBW',pRad,"Prad(dBW) = ");

//(c)

disp("(d)EIRP is found by substituting into equations 15-7d,e and f");

EIRP=Pin*A;

disp('W',EIRP,"EIRP = ");

EIRP1=10*log10(EIRP/0.001);

disp('dBm',EIRP1,"EIRP(dBm) = ");

EIRP2=10*log10(EIRP)

disp('dBW',EIRP2,"EIRP(dBW) = ");
