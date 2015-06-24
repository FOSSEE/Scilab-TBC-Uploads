//Caption:Find the generated voltage and armature current
//Exa:2.4
clc;
clear;
close;
V_t=300;//in volts
V_b=1;//voltage drop per brush in volts
I=200;//in amperes
R_f=200;//shunt feild winding resistance in ohms
R_a=0.05;//armature winding resistance in ohms
R_se=0.04;//Series feild winding resistance in ohms
I_f=V_t/R_f;//in amperes
I_a=I+I_f;//in amperes
E_g=V_t+(R_a+R_se)*I_a+(2*V_b);
disp(E_g,'Value of generated voltage (in volts)=');
disp(I_a,'Value of armature current (in Ampers)=')