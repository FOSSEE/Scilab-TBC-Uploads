//Example 12// frequency
clc;
clear;
close;
nb=4;//beats
l1=70;//cm
l2=70-1;//cm
x=l2/l1;//
n=(x*nb)/(1-x);//
disp(n,"frequency is,(Hz)=")
