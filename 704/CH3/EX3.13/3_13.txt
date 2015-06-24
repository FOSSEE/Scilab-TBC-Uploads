//Caption:Find the active and reactive components of a single phase transformer.
//Exam:3.14
clc;
clear;
close;
V_1=440;//supply Voltage(in Volts)
p=acosd(0.3);//power angle when power factor is 0.3
P_o=80;//power input to the hv winding(in Watt)
I_o=P_o/(V_1*cosd(p));//No load current (in Amp)
I_w=I_o*cosd(p);//Active component of no  load current (in Amp)
disp(I_w,'Active component of no load current (in Amp)=');
I_m=I_o*sind(p);//Reactive component of no load current (in Amp)
disp(I_m,'Reactive component of no load current (in Amp)=');