// example:-4.1,page no.-148.
// program to find the cut off frequency fo the first four propagating modes.
a=0.02286;b=0.01016;f=10*10^9;k=209.44;sigma=5.8*10^7;mue=4*%pi*10^-7;
c=3*10^8;
m=0;n=1;
fc=(c/(%pi*2))*sqrt(((%pi*m)/a)^2+((%pi*n)/b)^2);
fc=fc/(10^9);
disp(fc,'cut-off frequency for TE01 mode in GHZ=')
m=1;n=0;
fc=(c/(%pi*2))*sqrt(((%pi*m)/a)^2+((%pi*n)/b)^2);
fc=fc/(10^9);
disp(fc,'cut-off frequency for TE10 mode in GHZ=')
m=2;n=0;
fc=(c/(%pi*2))*sqrt(((%pi*m)/a)^2+((%pi*n)/b)^2);
fc=fc/(10^9);
disp(fc,'cut-off frequency for TE20 mode in GHZ=')
m=1;n=1;
fc=(c/(%pi*2))*sqrt(((%pi*m)/a)^2+((%pi*n)/b)^2);
fc=fc/(10^9);
disp(fc,'cut-off frequency for TE11 mode in GHZ=')
B=sqrt(k^2-(%pi/a)^2)  // for TE10 mode
Rs=sqrt(((2*%pi*f)*mue)/(2*sigma));   // surface resistance.
disp(Rs,'surface resistance in ohm=')
ac=(Rs/(a^3*b*B*k*377))*((2*b*%pi^2)+(a^3*k^2))  //attenuation constant.
ac=-20*(-ac)*log10(%e);
disp(ac,'attenuation constant in dB/m=')