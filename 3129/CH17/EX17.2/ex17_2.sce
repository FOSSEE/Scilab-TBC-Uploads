//Finding the Circuit values of a UJT Triggering ciruit
//Example 17.2(Page No-774) 
clc
clear
//given data 
Vs=30;//in volts
n=0.51;
Ip=10*10^-6;//amperes
Vv=3.5;//volts
Iv=10*10^-3;//amps
f=60;//Hz
tg=50*10^-6;//in sec
Vd=0.5;//volts
T=1/f;//sec
Vp=n*Vs+Vd;
C=0.5*10^-6;//assume C 
x=(Vs-Vp)/Ip;//upper limit of R
x=x*10^-6;//in megaohms
printf('upper limit of R:%2.2f kohms\n',x);
y=(Vs-Vv)/Iv;//lower limit of R
y=y*10^-3;//in kiloohms
printf('lower limit of R:%2.2f Mohms\n',y);
R=1/(f*C*log(1/(1-n)));
R=R*10^-3;//in kohms
printf('Value of R:%2.2f kohms\n',R);
Vb1=Vp;//peak gate voltage
Rb1=tg/C;
printf('Rb1:%d Ohms\n',Rb1);
Rb2=10^4/(n*Vs);
printf('Rb2:%.2f Ohms\n',Rb2);
