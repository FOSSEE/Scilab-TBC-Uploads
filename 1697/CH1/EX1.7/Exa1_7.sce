//Exa 1.7
clc;
clear;
close;
//given data :
l=30;//in m
Irms=20;//in A
f=1;//in MHz
r=10;//in Km
r=r*1000;//in m
le=2*l/%pi;//in m
lambda=300/(f);//in m
Erms=120*%pi*le*Irms/(lambda*r);//in V/m
disp(Erms,"Field strength at 10Km distace in V/m: ");
//Note : Answer in the book is wrong