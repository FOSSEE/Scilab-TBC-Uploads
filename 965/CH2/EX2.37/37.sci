clc;
clear all;
disp("thermal conductivity of gas")
 rt=10^(-3);//m inside radius of tube
 L=0.25;//m length of tube
 rw=0.025*10^(-3);// m radius of electric wire
 tt=150;// degree C inside tube temperature
 tw=175;// degree C wire temperature
 I=0.5;// A current through element
 V=4;// V voltage across element
 Q=V*I;// W
 disp("W",Q,"heat transfer rate =")
 //Q=2*3.1416*L*k*(tw-tt)/log(rt/rw)
 X=(2*3.1416*L*(tw-tt)/log(rt/rw))
 k=Q/X;// thermal conductivity of the gas
 disp("W/(m*C)",k,"thermal conductivity of the gas =")
 
 
