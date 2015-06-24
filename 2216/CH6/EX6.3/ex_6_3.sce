// Example 6.3:loss
clc;
clear;
close;
format('v',5)
d=100;//micro meter
dx=0;//
dy=3;//in micro mete
dth=3;//in degree
dthr=dth*(%pi/180);//
dya=0.02;//
n1=1.48;//refrative index
na=1;//
k1=n1/n1;//
k2=1;//
nf=((16*(n1)^2)/((n1+1)^4));//
nlat=(2/(%pi))*(acos(dy/100)-(dy/100)*(1-(dy/100)^2)^(1/2));//
NA=n1*(sqrt(2*dya));//
nang=((1-(na*dthr)/(%pi*NA)));//
nt=nf*nlat*nang;//
lt=(-10*log10(nt));//in dB
disp(lt,"total loss in dB is")

