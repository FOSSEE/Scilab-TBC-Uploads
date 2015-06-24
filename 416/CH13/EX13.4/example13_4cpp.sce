clc
clear
disp('example 13.4')
pa=50;xgb=0.5;xb=0.1;//given power,reactance of generator
x1=xgb+xb;
x=x1*x1*xgb/(x1*x1+x1*xgb+x1*xgb)
f=pa/x
printf(" total reactance %.4f.p.u \n fault MVA %.1fMVA",x,f)