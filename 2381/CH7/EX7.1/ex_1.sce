//Example 1 //  ratio
clc;
clear;
close;
ri=9/16;//ratio of intensities
ra=sqrt(ri);//ratio of amplitude
a1=1;//assume
a2=ra*a1;//
rim=(a1+a2)^2/(a1-a2)^2;//
disp("ratio of  maximum intensity and minimum intensity in fringe system is "+string(rim)+":"+string(a1)+"")
