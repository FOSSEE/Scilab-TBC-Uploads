//Finding the Performance Parameters of a full wave rectifier with center tapped transformer
//Example 3.4 (Page No- 78) 
clc
clear
//given data

Vm = 1; // Assume
R = 1;// Assume
Vdc = (2*Vm/%pi);
Idc = (Vdc/R);
Vrms = Vm/sqrt(2);
Irms = Vrms/R;

//part(a)
Pdc = Vdc*Idc; // dc output power
Pac = Vrms*Irms; // ac input power
eta = Pdc/Pac; // efficiency
eta_per = eta*100;
printf('Efficiency %2.3f%% \n',eta_per);

//part(b)
FF = Vrms/Vdc; //Form factor
printf ('Form factor : %f \n',FF);

//part(c)
RF = sqrt(FF^2-1);// Ripple Factor
RF_per = RF*100; // percentage RF
printf('Ripple Factor : %2.1f \n',RF_per);

//part(d)
Vs = Vm/sqrt(2);
Is = 0.5*(Vm/R);
VA = 2*Vs*Is;
TUF = Pdc/VA;
TUF_per=TUF*100;
printf('TUF : %f \n',TUF_per);

//part(e)
PIV = 2*Vm
printf('Peak inverse voltage is 2Vm \n')

//part(f)
Is_peak = Vm/R;
Is = Vm/(sqrt(2)*R);
CF = Is_peak/Is;
printf('Crest Factor %1.4f \n',CF)

//part(g)
PF = Pac/VA;
printf('Power Factor :%f \n',PF)
