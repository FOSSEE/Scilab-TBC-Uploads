//Example 6_8
clc;
clear;
close;
format('v',5);
//given data : 
Rf=500;//ohm
RL=2000;//ohm
Vrms=280;//V
Vm=Vrms*sqrt(2);//V
//Part (a)
Idc=2*Vm/%pi/(Rf+RL);//A
Idc=Idc*1000;//mA
disp(Idc,"(a) The dc load current(mA) : ");
//Part (b)
Idc_tube=Idc/2;///mA
disp(Idc_tube,"(b) Direct current in each tube(mA) : ");
//Part (c)  
v2=Vm*Rf/(Rf+RL);//V
v1=-2*Vm+v2;//V
Vrms=sqrt(1/2/%pi*integrate('v2^2*(sin(alfa))^2','alfa',0,%pi)+1/2/%pi*integrate('v1^2*(sin(alfa))^2','alfa',%pi,2*%pi));//V
Vrms=floor(Vrms);///V
disp(Vrms,"(c) The ac voltage across each diode(V) : ");
//Part (d)
Pdc=(Idc/1000)^2*RL;//W
disp(Pdc,"(d) The dc output power(W) : ");
//Part(e)
Reg=Rf/RL*100;//%
disp(Reg,"(e) % Regulation : ");
//Answer in the textbook is not accurate.
