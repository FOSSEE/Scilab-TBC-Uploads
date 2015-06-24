//Chapter 10
//Sketch the output Waveform 
//page no.  370
//Example10_7
//Figure 10.23
//Given
clc;
clear;
f=4;            //in KHz
T=1/f;
S=5*10^6;
step=1;
t=0:step:1;
Vin=S*t;
printf("\n Vin(t) = %.0f*t",S);
Rf=5000;           //in Ohm
C=10^-8;           //in farad
dy=diff(S*t/step); //approximate differentiation of sine function
Vout=-Rf*C*dy;
printf("\n Vou(t) = %.0f V",Vout);
t=(0:0.1:5*%pi)';
plot(t,3*squarewave(t));
xtitle("Output Wave form","t","V");
xtitle('Input(b) and Output(r)','t');
