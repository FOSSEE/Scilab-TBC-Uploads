//Example 2.36: phase angle error load in VA
clc;
clear;
close;
//given data 
v1=1000;//V
v2=100;//V
r=v1/v2;//
pf=0.4;//
sd=pf;//
csd=sqrt(1-pf^2);//
im=0.02;//A
ie=im*(pf/csd);//A
xp=65.4;//ohm
rp=97.5;//ohm
th=((ie*xp)-(im*rp))/(r*v2);//rad
thd=th*(180/%pi);//
disp("phase angle is "+string(thd*60) +"minutes")
Xp=110;//ohm
is=(r*((im*rp)-(ie*xp)))/(Xp);
va=is*v2;//VA
disp(va,"load is ,(VA)=")
