//Example 2.38: RCF ,ratio error and phase angle error
clc;
clear;
close;
vp=2000;//V
n=20;//
vs=vp/n;//
va1=50;//
pfl1=0.6;//lagging
is=va1/vs;//A
va2=25;//V
is2=va2/vs;//A
ie=0;//
im=0;//
cd1=0.6;//
sd1=sqrt(1-cd1^2);//
rs1=0.75;//ohm
rp1=300;//ohm
Rp1=n^2*rs1+rp1;//ohm
xs1=1.5;//ohm
xp1=600;//ohm
Xp1=n^2*xs1+xp1;//ohm
vps1=n+((is/n)*(Rp1*cd1+Xp1*sd1))/vs;//
RCF1=vps1/n;//
er1=((n-vps1)/vps1)*100;//%
per1=((is*(Xp1*cd1-Rp1*sd1))/(n^2*vs))*(180/%pi);//degree
per1a=round(per1);//
x1=per1-per1a;//
disp(RCF1,"RCF for case (a) is,=")
disp(er1,"phase error for case (a) is,(%)=")
disp("phase angle error for case (a) is  "+string(x1*60)+" minutes")
cd11=1;//
sd11=sqrt(1-cd11^2);//
vps2=n+((is/n)*(Rp1*cd11+Xp1*sd11))/vs;//
RCF2=vps2/n;//
er2=((n-vps2)/vps2)*100;//%
per2=((is*(Xp1*cd11-Rp1*sd11))/(n^2*vs))*(180/%pi);//degree
per1a1=round(per2);//
x2=per1-per1a1;//
disp(RCF2,"RCF for case (b) is,=")
disp(er2,"phase error for case (b) is,(%)=")
disp("phase angle error for case (b)is  "+string(per2*60)+" minutes")
cd12=0.6;//
sd12=-0.8;//
vps3=n+((is/n)*(Rp1*cd12+Xp1*sd12))/vs;//
RCF3=vps3/n;//
er3=((n-vps3)/vps3)*100;//%
per3=((is*(Xp1*cd12-Rp1*sd12))/(n^2*vs))*(180/%pi);//degree
per1a1=round(per2);//
x2=per1-per1a1;//
disp(RCF3,"RCF for case (c) is,=")
disp(er3,"phase error for case (c) is,(%)=")
disp("phase angle error for case (c)is  "+string(per3*60)+" minutes")
cd13=0.6;//
sd13=0.8;//
vps4=n+((is2/n)*(Rp1*cd13+Xp1*sd13))/vs;//
RCF4=vps4/n;//
er4=((n-vps4)/vps4)*100;//%
per4=((is2*(Xp1*cd13-Rp1*sd13))/(n^2*vs))*(180/%pi);//degree
per1a1=round(per2);//
x2=per1-per1a1;//
disp(RCF4,"RCF for case (d) is,=")
disp(er4,"phase error for case (d) is,(%)=")
disp("phase angle error for case (d)is  "+string(per4*60)+" minutes")
cd14=1;//
sd14=0;//
vps5=n+((is2/n)*(Rp1*cd14+Xp1*sd14))/vs;//
RCF5=vps5/n;//
er5=((n-vps5)/vps5)*100;//%
per5=((is2*(Xp1*cd14-Rp1*sd14))/(n^2*vs))*(180/%pi);//degree
per1a1=round(per2);//
x2=per1-per1a1;//
disp(RCF5,"RCF for case (e) is,=")
disp(er5,"phase error for case (e) is,(%)=")
disp("phase angle error for case (e)is  "+string(per5*60)+" minutes")
cd15=0.6;//
sd16=-0.8;//
vps6=n+((is2/n)*(Rp1*cd15+Xp1*sd16))/vs;//
RCF6=vps6/n;//
er6=((n-vps6)/vps6)*100;//%
per6=((is2*(Xp1*cd15-Rp1*sd16))/(n^2*vs))*(180/%pi);//degree
per1a1=round(per2);//
x2=per1-per1a1;//
disp(RCF6,"RCF for case (f) is,=")
disp(er6,"phase error for case (f) is,(%)=")
disp("phase angle error for case (f)is  "+string(per6*60)+" minutes")

