//chapter 6 example 6//
clc
clear
//effeciency=n,charge of electron=e,wavwlength=l,plancks constant=h,speed of light=c,diode current=Ip,multiplication factor=M//
n=0.7;
e=1.6*(10^-19);
l=0.8*(10^-6);//in meters//
h=6.62*(10^-34);
c=3*(10^8);//in mts per sec//
R=(n*e*l)/(h*c);//responsivity//
printf("\n Responsivity=%f AW-1\n",R)
Po=0.8*(10^-6);//in watts//
Ip=(Po*R)*(10^6);//diode current//
I=10;//in micro amperes//
M=I/Ip;
printf("\n Multiplication factor=%f \n",M)