//Example 2.39: RCF ,ratio error and phase angle error
clc;
clear;
close;
vp=1000;//V
is=5;//A
n=vp/is;//
VA=25;//
vs=VA/is;//
vp=is/n;//V
wt=0.25;//W
ie=wt/vp;//A
im=15;//A
xs=1;//ohm
rs=5;//ohm
dl=atand(xs/rs);//
dlr=dl*(%pi/180);//
K=n+((ie*cosd(dl)+im*sind(dl))/is);//
re=((n-K)/K)*100;//per
RCF=K/n;//
eph=(180/%pi)*(((im*cosd(dl))-(ie*sind(dl)))/(n*is));
disp(re,"ratio error is,(%)=")
disp(RCF,"RCF is ,=")
disp(eph,"phase angle error is,(degree)=")
