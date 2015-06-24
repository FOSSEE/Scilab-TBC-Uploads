//Chapter 10
//Sketch the output Waveform 
//page no.  368
//Example10_6
//Figure 10.19
//Given
clc;
clear;
Rf=5000;           //in Ohm
C=10^-8;           //in farad

f=4000;            //in KHz
T=1/f;
printf("\n T = %.6f second",T);
S=6/(125*10^-6);
printf("\n Slope = %.0f V/S",S);
//graph
step=1;
t=0:step:1;
Vin=S*t;
dy=diff(S*t/step); //approximate differentiation of sine function

Vout=-Rf*C*dy;
printf("\n Vou(t) = %.1f V",Vout);

T0=4;
t=-5.99:0.01:6;
t_temp=0.01:0.01:T0/2;
s=length(t)/length(t_temp);
dx=[];
x=[];
for i=1:s
    if modulo(i,2)==1  then
        dx=[dx -ones(1,length(t_temp))];
        x=[x .5*t_temp($:-1:1)];
    else
        dx=[dx ones(1,length(t_temp))];
        x=[x .5*t_temp]; 
    end
end
//figure

subplot (1,1,1)
plot(t,3-6*x,'b',t,2.4*dx,'r')
xtitle('Input(b) and Output(r)','t',"V")
