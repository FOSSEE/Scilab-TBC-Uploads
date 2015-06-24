//Example 18.3
clc
s=%s;
Kf=-1;
tp=2;
//Applying feedforward control rules
T1=1.5*tp
T2=0.7*tp
Gfs=Kf*(T1*s+1)/(T2*s+1);
disp(Gfs,'Gf(s)=')
