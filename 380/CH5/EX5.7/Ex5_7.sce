//Caption:Find the voltage between far end of feeder and bus bar
//Exa:5.7
clc;
clear;
close;
V_o=240;//bus bar voltage (in Volts)
I_d=0;
I_s=300;//current in series winding (in Amperes)
R_s=0.03;//resistance of series feild winding(in ohms)
R_a=0.02;//resistance of armature winding(in ohms)
R_fe=0.25;//resistance of feeder (in ohms)
//Refer to eqn:5.33
I_a=I_s;
E_a=0.4*I_s;//induced emf
V_d=I_s*(R_s+R_a+R_fe);//voltage drop (in Volts)
V_t=V_o+E_a-V_d;
disp(V_t,' voltage between far end of feeder and bus bar  (in Volts)=')