//EXAMPLE 10.8
//Design of LP FIR filter using Kaiser window
clear;
clc;
wp=0.3*%pi;//rad/sec
ws=0.5*%pi;//rad/sec
as=40;//dB
wc=(wp+ws)/2;//cutoff frequency
Bw=ws-wp;
disp(Bw,'Normalized transition bandwidth is = ')

ds=10^(-as/20);
B = (0.5842*(as-21)^0.4) + 0.07886*(as-21);

N = ceil((as - 8)/(2.285*Bw));
disp(N,'Order of the filter,N =  ');
M=(N-1)*0.5;
disp(M,'M = ');
w=window('kr',N,6);//Kaiser window
i=-M:1:M;

    hn=(wc/%pi)*sinc(wc*i'/(%pi));
    h=hn*w;

clf();
n=0:0.001:1;
[H,fr]=frmag(w,1001);

plot2d(2*fr,log10(H./max(H)),style=color('blue'))
set(gca(),'grid',[1 1]*color('gray'))
a = gca () ;
xlabel ( 'w/%pi' ) ;
ylabel ('Magnitude in dB') ;
title ( 'Gain Response of Kaiser Window' );
