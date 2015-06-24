//Example 8.12
clc;clear;close;
rp=0.9                        //passband ripple
rs=0.2                        //stopband ripple
wp=%pi/2;                     //passband frequency
ws=3*%pi/4;                   //stopband frequency
T=1;
fp=2/T*tan(wp/2);
fs=2/T*tan(ws/2);
s=poly(0,'s');
z=poly(0,'z');
hs=1;
//Calculating the order of filter
num=log((rs^-2 -1)/(rp^-2 -1));
den=2*log(fs/fp);
N=ceil(num/den);

//Calculation of cut-off frequency
fc=fp/(rp^-2 -1)^(0.5/N);

//Calculating filter response
if modulo(N,2)==1 then
    hs=hs*fc/(s+fc);
end
for k=1:N/2
    b=2*sin((2*k-1)*%pi/(2*N));
    hs=hs*fc^2/(s^2+b*fc*s+fc^2);
end
hs=clean(hs);
sys=syslin('c',hs);             
hz=ss2tf(cls2dls(tf2ss(sys),T));        //converting H(s) to H(z)

//Displaying filter response
[hzm,fr]=frmag(hz,256);
disp(hz,'Filter Transfer function: ');
plot(fr,hzm);
title('Lowpass Butterworth Filter Response');ylabel('Amplitude-->');xlabel('Normalised frequency f/fs-->');