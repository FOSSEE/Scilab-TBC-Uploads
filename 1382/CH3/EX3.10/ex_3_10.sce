//Exa 3.10
clc;
clear;
close;
//given data :
//Vs=1.95*sin(400*t);in volt
//io=12*sin400*t+1.2*sin800*t+0.9*sin*1200*t+0.4*sin1600*t
//from current we have
V1=12;//in volt
V2=1.2;//in volt
V3=0.9;//in volt
V4=0.4;//in volt
//Harmonic distortion of each component is expressed as :
D2=V2/V1;//unitless
D3=V3/V1;//unitless
D4=V4/V1;//unitless
//Total distortion 
D=sqrt(D2^2+D3^2+D4^2);//unitless
disp("Total disortion : "+string(D)+" or "+string(D*100)+"%");
//Total Power
disp("Total Power, P=(1+D2^2)*P1");
disp("Percentage Increase in power because of distortion=(P-P1)*100/P1");
PowerIncrease=D^2*100;//in %
disp(PowerIncrease,"Percentage Increase in power = ");
