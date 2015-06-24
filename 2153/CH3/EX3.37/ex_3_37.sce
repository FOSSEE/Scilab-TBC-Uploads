// Example 3.36: interplanner spacing and diffraction angle
clc;
clear;
close;
a=.2866;// in Ä
h=0.1542;// in nm
n=1;//
a1=[2;1;1];//miller indices
d211=a/(sqrt(a1(1,1)^2+a1(2,1)^2+a1(3,1)^2));//interplanar distance between (211)planes
snd=((n*h)/(2*d211));//
th=asind(snd);// bragg angle in degree
d1=floor(th);//
d2=th-floor(d1);//
disp("angle between planes (122) and (111) is "+string(d1)+" degree "+string(round(60*d2))+" minutes")
disp(d211,"interplanner spacing in Ä is")
//answer is wrong in the textbook
