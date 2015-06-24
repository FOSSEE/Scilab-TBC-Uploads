//pagenumber 427 example 5
clear
g=2.6*10^-3;//ampere per volt
rd=7.7*10^3;//ohm
rd1=12*10^3;//ohm
cb=0.005*10^-6;//farad
//(1) voltage gain
volgai=g*((1/rd)+1/rd1+1/(1*10^3));
volgai=(20*(log10(10.8)))*3;
disp("overal voltage gain   =   "+string((volgai))+"decibel");//correction in the book
//(2) lower frequency
r=rd*rd1/(rd+rd1);
freque=1/((2*3.14)*(r+1*10^6)*cb);
disp("lower frequency of each   =   "+string((freque))+"hertz");
//(3) overal lower frequency
freque=freque*1.96;
disp("lower frequency overal   =   "+string((freque))+"hertz");


