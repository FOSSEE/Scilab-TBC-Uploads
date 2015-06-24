

//example 4.63
//calculate  design disharge
clc;funcprot(0);
//given
xavg=1200;        //sample mean
n=50;             //assurance year
A=0.95;           //assurance percent
Rsk=1-A;
sigma=650;        //standard deviation
yn=0.53622;       //mean of reduced variate
sigma30=1.11238;  //standard deviation of reduced variate

T=1/(1-(1-Rsk)^(1/n));
yt=-2.303*log10(2.303*log10(T/(T-1)));
K=(yt-yn)/sigma30;
xt=xavg+K*sigma;
mprintf(" design disharge=%i cumecs.",xt);

