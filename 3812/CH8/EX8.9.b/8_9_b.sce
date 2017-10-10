//Example 8_9 <b>
//Determine minimum sampling frequency
clc;
clear all;
Fl=18000;
Fh=22000;
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

