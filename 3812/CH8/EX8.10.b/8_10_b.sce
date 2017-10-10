//Example 8_10 <b>
//determine the minimum sampling rate
//x(t)=10cos(2000)cos(8000)
//x(t)=5cos(6000)+5cos(10000)
clc;
clear all;
Fl=6000/2;
Fh=10000/2;
Bandwidth_1=Fh-Fl;
a=modulo(Fh,Bandwidth_1);
Fh_1=Fh-a;
div_12=Fh_1./Bandwidth_1;
if(a==0) then
Fs=2*Bandwidth_1;
else
Fs=(2*Fh)/div_12;
end
disp('Minimum Sampling Frequency=');
disp(Fs);
