//Caption:In a transformer Calculate (a)Magnetising component of no load current (b)the iron loss (c)the maximum value of flux in the core.
//Exam:3.11
clc;
clear;
close;
V_1=460;//supply voltage(in Volts)
I_o=15;//No load current (in Amp)
p=acosd(0.2);//power angle(when power factor is 0.2)
n=sind(p);
I_m=I_o*n;//Magnetising component of no load current 
disp(I_m,'Magnetising component of no load current (in Amp)=');
L_ir=V_1*I_o*cosd(p)/1000;//the iron loss in transformer(in kWatt)
disp(L_ir,'the iron loss in transformer(in kWatt)=');
E_1=V_1;//at no load condition
N_1=550;//primary winding
f=50;//supply frequency (in Hz)
F_m=E_1/(4.44*N_1*f);//the maximum value of flux in the core(in Wb)
disp(F_m,'the maximum value of flux in the core(in Wb)=');