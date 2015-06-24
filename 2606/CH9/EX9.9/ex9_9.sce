//Page Number: 9.16
//Example 9.9
clc;
//Given
Si=7D+4;
u=1;
BW=4D+3; //Hz
n=2D-12; //W/Hz

//(a)Minimum value of Ac
SbyN=40; //dB
SN=10^(SbyN/10);

Sx=2*[integrate('(x^2)*(-x+1)','x',0,1)];
//Now
g=SN/(Sx/(1+Sx));
//And
//Ac=sqrt((2*n*BW*g)/(1+(u^2*Sx))
//We have
Ac=sqrt((2*n*BW*g)/(1+(u^2*Sx)));
disp('V',Ac,'Minimum Value of Ac:');

//(b)Threshold value of Ac
//AS S/N at threshold is 10dB
SNT=10; //dB
gT=2*SNT;
AcT=sqrt((2*n*BW*gT)/(1+(u^2*Sx)));
disp('V',AcT,'Minimum Value of Ac at Threshold:');

