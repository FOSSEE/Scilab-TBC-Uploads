// sum 3-6
clc;
clear;
delT=100;
ab=18*10^-6;
aa=23*10^-6;
delta=(360*ab*delT)+(450*aa*delT);
lc=delta-0.6;
Ea=70*10^3;
Eb=105*10^3;
Aa=1600;
Ab=1300;
P=lc/((360/(Ab*Eb))+(450/(Aa*Ea)));
P=P*10^-3;
//Let the change in length be delL
delL=(aa*450*delT)-(P*10^3*450/(Aa*Ea));

  // printing data in scilab o/p window
  printf("P is %f kN     ",P);
  printf("\n delL is %f mm     ",delL);
  
 // The difference in the answer of delL is due to round-off errors.