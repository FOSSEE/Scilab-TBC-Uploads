

//example 4.68
//calculate flood magnitude with return period of 1000 years
clc;funcprot(0);
//given
T1=100;T2=50;            //Return period
F1=485;F2=445;      //Peak flood
y50=-(2.303*log10(2.303*log10(T2/(T2-1))));
y100=-(2.303*log10(2.303*log10(T1/(T1-1))));
y=(F2-F1)/(y50-y100);
T=1000;
y1000=-(2.303*log10(2.303*log10(T/(T-1))));
x1000=F2+(y1000-y50)*y;
x1000=round(x1000*10)/10;
mprintf("flood magnitude with return period of 240 years=%f cumecs.",x1000);
