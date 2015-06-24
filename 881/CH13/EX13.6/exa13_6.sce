clc;
//Example 13.8
//Page No 575



//solution

P=30*10^-3;
cl=0.5;
conl=2;
ltc=1.9;
ctd=2.1;



disp("The LED output power is converted to dBm using equation 13-6");

Po=10*log10(P/0.001);

disp('dBm',Po,"Po = ");



t=20*cl;

disp('dB',t,"total cable loss = ");



c=3*conl;

disp('dB',c,"total connector loss = ");

//light source to cable and cable to light detector losses

tl=t+c+ltc+ctd;

disp('dB',tl,"total loss = ");

disp("The receive power is determined by substituting into equation 13-22 ");

Pr=Po-tl;

disp('dBm',Pr,"Pr = ");
