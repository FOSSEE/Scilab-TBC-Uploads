//Caption:Find the (a)shunt feild current (b)armature current (c)generated emf in armature (d)load resistance
//Exa:2.5
clc;
clear;
close;
V_t=250;//in volts
I=195;//in amperes
R_f=50;//shunt feild winding resistance in ohms
R_a=0.05;//armature winding resistance in ohms
I_f=V_t/R_f;//in amperes
I_a=I+I_f;//in amperes
E_g=V_t+(R_a*I_a);
R_L=V_t/I;
disp(I_f,'(a) Value of shunt feild current (in Amperes)=')
disp(I_a,'(b) Value of armature current (in Amperes)=')
disp(E_g,'(c) Value of generated voltage (in volts)=');
disp(R_L,'(d) Value of load resistance (in ohms)=')