

//example 4.66
//calculate flood magnitude with return period of 200 years
clc;funcprot(0);
//given
T1=50;T2=100;            //Return period
F1=30800;F2=36300;      //Peak flood
y100=-(2.303*log10(2.303*log10(T2/(T2-1))));
y50=-(2.303*log10(2.303*log10(T1/(T1-1))));
y=(F2-F1)/(y100-y50);
T=200;
y200=-(2.303*log10(2.303*log10(T/(T-1))));
x200=F2+(y200-y100)*y;
x200=round(x200);
mprintf("flood magnitude with return period of 240 years=%f cumecs.",x200);
