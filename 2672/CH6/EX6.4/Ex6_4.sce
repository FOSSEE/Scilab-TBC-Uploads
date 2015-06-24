//Example 6_4
clc;
clear;
close;
format('v',6);
//given data : 
Rf=30;//ohm
RL=990;//ohm
Vrms=110;//V
//Part (a)
Vm=Vrms*sqrt(2);//V
Im=Vm/(Rf+RL)*1000;///mA
disp(Im,"(a) Peak Load Current(mA)");
//Part (b)
format('v',5);
Idc=Im/%pi;//mA
disp(Idc,"(b) The dc Load Current(mA)");
//Part (c)
Irms=Im/2;//mA
disp(Irms,"(c) The ac Load Current(mA)");
//Part (d)
format('v',4);
Vdc=-Im*RL/1000/%pi;//mA
disp(Vdc,"(d) The dc diode Voltage(mV)");
//Part (e)
format('v',5);
Pi=(Irms*10^-3)^2*(Rf+RL);//W
disp(Pi,"(e) Total Input Power(W)");
//Part (f)
format('v',6);
VNL=Vm/%pi;//V
VFL=Idc*RL/1000;//V
Reg=(VNL-VFL)/VFL*100;//%(Regulation)
disp(Reg,"(f) % Regulation(%)");
//Answer not accurate in the book & unit of answer for part(d) is wrong.
