clear;
clc;
R=80;C=0.06*(10^-6);L=0;G=0;f=2500;al=0.04;ratio=40;
fc=2*f;
//ratio=ratio off resistance to inductance of loading coil
A=2/(3.14*3.14*C*4*f*f); //A=Lc*d
B=al/(%pi*f*1.414*C/2);
C=%pi*f*1.414*C/2;
y=poly([ratio*C*100*A -al*100 80*100*C],"x","coeff");
a=roots(y);
b=round(a(1,1)*100)/100;
Lo=round((A/b)*1000)/1000;
printf("Adding %f Henry coils at intervals of %f km is the practical and economically possible solution.",Lo,b)
