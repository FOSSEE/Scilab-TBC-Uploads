//Example 3.77:parameters
clc;
clear;
close;
rab=1000;//ohm
f=1;//kHz
cab=0.5;//micro-F
zab=1/((1/rab)+(%i*2*%pi*f*10^3*cab*10^-6));//
rbc=1000;//ohm
zbc=rbc-(%i/(2*%pi*f*10^3*cab*10^-6));//
rcd=200;//ohm
lcd=30;//mH
zcd=rcd+(%i*2*%pi*f*10^3*lcd*10^-3);//
zda=(zab*zcd)/zbc;//ohm
R=real(zda);//
cda=1/(2*%pi*f*10^3*imag(zda));//
disp(R,"resistance is ,(ohm)=")
disp(-cda*10^6,"capacitance is ,(micro-F)=")
x=sqrt(real(zda)^2+imag(zda)^2);//
rp=x;//ohms
cp=(((-imag(zda))/real(zda))*10^3)/(2*%pi*rp);//
disp(rp,"Rp is,(ohm)=")
disp(cp,"Cp is ,(micro-F)=")
//Rp and Cp is calculated wrong in the textbook
