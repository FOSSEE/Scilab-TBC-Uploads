//Example 3.7: Unknown resistance
clc;
clear;
close;
//given data :
s=0.5;//Mega ohms
g=10;//killo ohms
d1=41;//divisions
d2=51;//divisions
r=(((s*10^6)+(g*10^3))*(d1/d2))-(g*10^3);//ohms
disp(r*10^-6,"unknown resistance is,(Mega-ohm)=")
