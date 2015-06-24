//Example 3.69.b:resistance and capacitance
clc;
clear;
close;
rab=521;//ohms
lab=2;//micro-H
cab=550;//pF
rbc=1200;//ohms
lbc=5;//micro-H
cbc=250;//pF
rda=12.1;//ohms
rda1=1.5;//m-ohms
f=10;//kHz
cda=0.045;//micro-F
zab=1/((1/(rab+(%i*2*%pi*f*10^4*lab*10^-6)))+(%i*2*%pi*f*10^3*cab*10^-12));//
zbc=1/((1/(rbc+(%i*2*%pi*f*10^4*lbc*10^-6)))+(%i*2*%pi*f*10^3*cbc*10^-12));//
zda=rda+((1/((1/rda1*10^-6)+(%i*2*%pi*f*10^3*cda*10^-6))));//;//
zcd=(zbc*zda)/zab;//
zab1=521;//ohms
zbc1=1200;//ohms
rda1=12.1;//ohms
f1=10;//kHz
cda1=0.045;//micro-F
zda1=rda1-(%i/(2*%pi*f1*10^3*cda1*10^-6));//
zcd1=(zbc1*zda1)/zab1;//
c1=1/(2*%pi*f*10^3*imag(zcd1));//
c=1/(2*%pi*f*10^3*imag(zcd));//
per=((real(zcd1)-real(zcd))/real(zcd))*100;//
pec=((imag(zcd1)-imag(zcd))/imag(zcd))*100;//
disp(per,"error in R is,(%)=")
disp(pec,"error in C is,(%)=")
//answer is wrong in the textbook
