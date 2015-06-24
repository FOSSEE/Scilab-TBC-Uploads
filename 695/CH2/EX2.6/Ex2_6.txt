//Caption:Find the value of generated emf and armature current
//Exa:2.6
clc;
clear;
close;
V_t=250;//in volts
V_AC=V_t;
V_b=1;//voltage drop per brush in volts
I=40;//in amperes
R_f=100;//shunt feild winding resistance in ohms
R_a=0.05;//armature winding resistance in ohms
R_se=0.04;//series feild winding resistance in ohms
V_BC=V_AC+I*R_se;//in volts
I_f=V_BC/R_f;//in amperes
I_a=I+I_f;//in amperes
E_g=V_BC+(R_a*I_a)*(2*V_b);
disp(I_a,' Value of armature current (in Amperes)=');
disp(E_g,' Value of generated voltage (in volts)=');