// page no 536
// Example 12.1
// Let the received signal be km(t)cos(wct) , demodulator input is [km(t)+nc(t)]cos(wct)+[ns(t)sin(wct)]. When this is multiplied by 2coswct and low pass filtered the output is s0(t)+n0(t)=km(t)+nc(t).
// Hence So=k^2*m^2' , No=nc^2'. But the power of the received signal km(t)cos(wct)= 1uW. Hence k^2*m^2'/2=10^-6
clc;
So=2*10^-6;
// to compute nc: (nc^2)'=(n^2)'=x
t0=496000; t1=504000 ;
a=10^6 * %pi;
y=integrate ('1/((t^2)+(a^2))','t',t0,t1);
// to compute output SNR
SNR=So/y;
val=(10*(log (SNR)));
disp(+'dB',val,"output SNR = ");