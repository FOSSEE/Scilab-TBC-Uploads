close();
clear;
clc;
Vcc = 5; //V
Vb = 3.5; //V
Rc = 640; //ohm
Rb1 = 450; //ohm
Rb2 = Rb1; 
Vcesat = 0.2; //V
B = 50;
Ibsat = (Vcc-Vcesat)/(B*Rc); 
//number of gates that can be attached to v
n = (Vcc-Vb)/(Rc*Ibsat);
mprintf("number of gates that can be attached to v without risk of error in logic, n < %d",n);