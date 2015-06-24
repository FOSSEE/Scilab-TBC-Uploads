// Example 3.35: bragg angle
clc;
clear;
close;
n=1;//
a=3.57;//in Ä
h=0.54;//wavelnegth in Ä 
a1=[1;1;1];//miller indices
d111=a/(sqrt(a1(1,1)^2+a1(2,1)^2+a1(3,1)^2));//interplanar distance between (111)planes
snd=((n*h)/(2*d111));//
th=asind(snd);// bragg angle in degree
d1=floor(th);//
d2=th-floor(d1);//
disp("angle between planes (122) and (111) is "+string(d1)+" degree "+string(round(60*d2))+" minutes")
//wavelength is given wrong in example it is 0.54Ä and it is taken as 1.54Ä
