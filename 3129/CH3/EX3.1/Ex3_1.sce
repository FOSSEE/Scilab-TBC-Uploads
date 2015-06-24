//Finding the Performance Parameters of a Half-Wave Rectifier
//Example 3.1 (Page No- 71) 
clc
clear
Vm = 1; // Assume value of Vm
R = 1; // Assume R is 1
Vdc = (0.318*Vm)/R;
Idc = (0.318*Vm)/R;
Pdc = (0.318*Vm)^2/R;
Pac = (0.5*Vm)^2/R;
Vrms = 0.5*Vm;
Irms = (0.5*Vm)/R;
// part(a)
eta = (Pdc/Pac)*100; // efficiency
printf('Efficiency : %2.2f%% \n',eta);
//part(b)
FF = Vrms/Vdc; //Form Factor
perFF = FF*100; // % Form factor
printf('Form Factor : %1.2f or %d%% \n',FF,perFF);
//part(c)
RF = sqrt(FF^2-1); // Ripple Factor
perRF = RF*100; // % RF
printf('Ripple Factor: %1.2f of %d%% \n',RF,perRF);
//part(d);
Vs = Vm/sqrt(2);
Is = (0.5*Vm)/R;
VA = Vs*Is;
TUF = Pdc/(VA); // Transformer Utility Factor
printf('Transformer utility Factor : %0.3f \n',TUF);
//part(e)
printf('Peak Inverse Voltage (PIV) = Vm \n');
//part(f)
Is_peak=Vm/R;
Is = (0.5*Vm)/R;
CF = Is_peak/Is; // Crest Factor
printf('Crest Factor : %d \n',CF);
//part(g)
PF = Pac/VA;
printf('Input Power factor: %0.3f',PF);


