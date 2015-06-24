// to find field current and field resistance at rated terminal voltage, em power and     torque

clc;
V_o=250;        //no load voltage
I_f=1.5;
R_f=V_o/I_f;    disp(R_f,'field resistance(ohm)');
P=25000;
V_t=220;
I_L=P/V_t;
I_a=I_L;        disp(I_a,'field current(A)');
R_a=.1;
E_a=V_t+I_a*R_a;
I_f=1.1;
R_f=V_t/I_f;        disp(R_f,'field resistance(ohm)');
I_a=I_L-I_f;
emp=E_a*I_a;
disp(emp,'em power(W)');
n=1600;
emt=emp/(n*2*%pi/60);
disp(emt,'torque(Nm)');
I_fa=1.25;        //actual I_f
I_c=I_fa-I_f;
disp(I_c,'I_f needed to counter effect armature current');