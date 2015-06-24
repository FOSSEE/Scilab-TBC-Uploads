

//example 4.33
//calculate flood magnitude with return period of 240 years
clc;funcprot(0);
//given
T1=40;T2=80;            //Return period
F1=27000;F2=31000;      //Peak flood
y80=-(2.303*log10(2.303*log10(T2/(T2-1))));
y40=-(2.303*log10(2.303*log10(T1/(T1-1))));
y=(F2-F1)/(y80-y40);
T=240;
y240=-(2.303*log10(2.303*log10(T/(T-1))));
x240=F2+(y240-y80)*y;
mprintf("flood magnitude with return period of 240 years=%i cumec.",x240);
