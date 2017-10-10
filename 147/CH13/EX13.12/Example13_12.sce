//Rated Power Pr, Turn ratio a, Open cicuit Voltage, Current and Power Vo, Io and Po
//Short cicuit Voltage, current and power Vs, Is and Ps
close();
clear;
clc;
Pr = 25000;//VA
a = 2;
Vo = 220;
Io = 9.6;
Po = 710;//W
Vs = 42;
Is = 57;
Ps = 1030;
Rc2 = Vo^2/Po;
Ic2 = Vo/Po;
Im2 = (Io^2-Ic2^2)^(1/2);
Xm2 = Vo/Im2;
Zs1 = Vs/Is;
Rs1 = Ps/Is^2;
Xs1 = (Zs1^2 - Rs1^2)^(1/2);
Rs2 = Rs1/a^2;
Xs2 = Xs1/a^2;
mprintf('Values of cicuit constants are:\nRc2 = %0.1f ohm\nXm2 = %0.2f ohm\nRs2 = %0.3f ohm \nXs2 = %0.3f ohm',Rc2,Xm2,Rs2,Xs2);