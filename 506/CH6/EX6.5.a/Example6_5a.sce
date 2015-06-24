clear;
clc;

//Caption:To find hFEmin
//Given Data
//For transistor
Vbesat=0.8;//Vgamma of diode in V
Vy=0.5;//in V
Vcesat=0.2;//in V
R = 5;//in K
Rc = 2.2;//in K

//For diode
Vyd=0.6;//in V
Vdrop=0.7;//in V

//The logic levels are Vcesato=0.2V for 0 state
Vcesato=0.2;//in V
//The logic levels are Vcc=5V for 1 state
Vcc=5;//in V
disp('If atleast one input is in 0 state');
Vp = Vcesato + Vy;//Potential at point P
disp('V',Vp,'Vp=');
//For diodes D1 and D2 to be conducting
v = 2*Vdrop;
disp('For diodes D1 and D2 to be conducting');
disp(v,'required voltage = ');
//These diodes cutoff
Vbe = 0;
if(Vbe<Vy)
    disp('Q is OFF');
    disp('Output rises to 5V and Y = 1');
    disp('This confirms first 3 rows of NAND truth table');
end

//if all inputs are at V(1)=5V , we shall assume all input diodes OFF and D1 and D2 conduct and Q is in saturation
disp('When inputs are at 5V');
Vp = Vdrop + Vdrop + Vbesat;
disp('V',Vp,'Vp=');
disp(Vcc-Vp,'The voltage across all input diode');

//For finding hFEmin
I1 = (Vcc-Vp)/R;
I2 = Vbesat/R;
Ib = I1-I2;
Ic = (Vcc-Vcesat)/Rc;
hFEmin = Ic/Ib;
disp(hFEmin,'hFEmin=');

//end