//Example 8_9 <c>
//Determine minimum sampling frequency
clc;
clear all;
Fl=30000;
Fh=35000;
Bandwidth_1=Fh-Fl;
a=modulo(Fh,Bandwidth_1);
Fh_1=Fh-a;
div_12=Fh_1./Bandwidth_1;
if(a==0) then
Fs=Bandwidth_1;
else
Fs=Bandwidth_1;
end
disp('Minimum Sampling Frequency=');
disp(Fs);
