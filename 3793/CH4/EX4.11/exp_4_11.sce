clear;
clc;
L=.35/(2*%pi*50);
C=4.2*10^(-6)/(2*%pi*50);
Zc=sqrt(L/C);
bet=2*%pi*50*sqrt(L*C);
disp(bet);
V=1;
X=1;
step=600/20;
x=600:-step:0;
y=(((cos(bet*x))+(%i*(sin(bet*x))/X)))*V;

plot(x,abs(y),'k');
set(gca(),"auto_clear","off");
X=.25;
y=(((cos(bet*x))+(%i*(sin(bet*x))/X)))*V;

plot(x,abs(y),'-k');

X=.5;
y=(((cos(bet*x))+(%i*(sin(bet*x))/X)))*V;

plot(x,abs(y),'k.');
X=1.25;
y=(((cos(bet*x))+(%i*(sin(bet*x))/X)))*V;

plot(x,abs(y),'k*');
X=1.5;
y=(((cos(bet*x))+(%i*(sin(bet*x))/X)))*V;

plot(x,abs(y),'kdiamond');

xlabel('Distance from receiving end in km' );
ylabel('Sending end voltage in pu');
title("Voltage profile of a three phase tramsmission line");
set(gca(),"auto_clear","on");
