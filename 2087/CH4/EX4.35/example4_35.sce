

//example 4.35
//calculate 200 year flood for stream using gumbel's method
clc;funcprot(0);
//given
sigma=1.1413;        //standard deviation
yn=0.5436;
T=50;
y50=-2.303*log10(2.303*log10(T/(T-1)));
K50=(y50-yn)/sigma;
T=100;
y100=-2.303*log10(2.303*log10(T/(T-1)));
K100=(y100-yn)/sigma;
x50=878;  x100=970;     //given peak flood
A=[K50 1;K100 1];
B=[x50;x100];
C=A\B;
xavg=C(2);
sigmad=C(1);
T=200;
y200=-2.303*log10(2.303*log10(T/(T-1)));
K200=(y200-yn)/sigma;
x200=xavg+K200*sigmad;
x200=round(x200);
mprintf("200 year flood for stream=%f cumecs.",x200);
