

//example 4.64
//calculate flood magnitude with return period of 500 years
clc;funcprot(0);
//given
T1=50;T2=100;            //Return period
F1=20600;F2=22150;      //Peak flood
y100=-(2.303*log10(2.303*log10(T2/(T2-1))));
y50=-(2.303*log10(2.303*log10(T1/(T1-1))));
y=(F2-F1)/(y100-y50);
T=500;
y500=-(2.303*log10(2.303*log10(T/(T-1))));
x500=F2+(y500-y100)*y;
x500=round(x500);
mprintf("flood magnitude with return period of 240 years=%f cumec.",x500);
