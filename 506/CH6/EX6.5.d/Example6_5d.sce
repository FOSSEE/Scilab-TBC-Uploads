clear;
clc;

//Caption:If input is low in NAND gate
//Given Data
//For transistor
Vbesat=0.8;//in V
Vy=0.5;//in V
R = 5;//in K
Rc = 2.2;//in K

//The logic levels are Vcesato=0.2V for 0 state
Vcesato=0.2;//in V
//For diode

Vyd=0.6;//in V
Vdrop=0.7;//in V

Vp = Vcesato + Vdrop;//Voltage at point P
disp('V',Vp,'Vp=');
Vbe = Vy;//Voltage at base emitter will be same as Vgamma
vp = Vbe + Vyd +Vyd;//The level to which vp should increase
Vn = vp - Vp;//Noise Margin
disp('V',Vn,'Noise Margin = ');

//end