//Example 2 //  intensity
clc;
clear;
close;
I=1;//assume
a1=1*I;//
a2=4*I;//
ph1=0;//degree
i1=(a1+a2)+a2*cosd(ph1);//
disp("intensity where phase difference is zero is "+string(i1)+"*I")
ph2=90;//degree
i2=(a1+a2)+a2*cosd(ph2);//
disp("intensity where phase difference is pi/2 is "+string(i2)+"*I")
ph3=180;//degree
i3=(a1+a2)+a2*cosd(ph3);//
disp("intensity where phase difference is pi is "+string(i3)+"*I")
