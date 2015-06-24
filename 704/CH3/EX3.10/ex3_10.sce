//Caption:In a single phase transformer primary side is open , Find (a)core loss, (b)loss component of current ,(c)Magnetising current.
//Exam:3.10
clc;
clear;
close;
O_p=50;//output (in KVA)
V_2=230;//Secondary voltage(in Volts)
P=187;//meter's power reading (in watt)
I_w=P/V_2;//Loss component of current(in Amp)
I_o=6.5;//meter's current reading (in Amp)
I_m=((I_o)^2-(I_w)^2);//Magnetising current(in Amp)
P=V_2*I_w;//Core loss(in watt)
disp(P,'Core loss(in watt)=');
disp(I_w,'Loss component of current(in Amp)=');
disp(I_m,'Magnetising current(in Amp)=');