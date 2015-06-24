clear;
clc;

//Caption:When atleast one input is at V(0) in NAND gate
//Given Data
//For transistor
Vbesat=0.8;//in V
Vy=0.5;//in V
Vcesat=0.2;//in V
R = 5;//in K
Rc = 2.2;//in K

//For diode
Vyd=0.6;//Vgamma in V
Vdrop=0.7;//in V

//The logic levels are Vcesato=0.2V for 0 state
Vcesato=0.2;//in V

disp('If atleast one input is in 0 state');
Vp = Vcesato + Vdrop;//Voltage at point P
disp('V',Vp,'Vp=');
Vbe = Vp-Vyd;//Voltage at base emitter
disp('V',Vbe,'Vbe=');
if(Vbe<Vy)
    disp('Q is cutoff');
end
if(Vbe>Vy)
    disp('Q is ON');
end
//end