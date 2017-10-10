clear;
clc;

//Caption:If input is high in NAND gate
//Given Data
//For transistor
Vbesat=0.8;//in V
Vy=0.5;//in V
R = 5;//in K
Rc = 2.2;//in K

//For diode
Vyd=0.6;//in V
Vdrop=0.7;//in V

//The logic levels are Vcesato=0.2V for 0 state
Vcesato=0.2;//in V
//And Vcc = 5V for 1 state.
Vcc = 5; // volts

Vp = Vdrop + Vdrop + Vbesat;//Voltage at point P
disp('V',Vp,'Vp=');
disp('V',Vcc-Vp,'Each diode is reversed biased by ');
disp('V',Vyd,'A diode starts to conduct when it is forward bias by');
vn = (Vcc-Vp) + Vyd;//Noise Spike which will cause the malfunction
disp('V',vn,'A noise spike which will cause malfunction is');


//end