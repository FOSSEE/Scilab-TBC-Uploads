clc;
//page no 91
//prob no 2.11
//refer fig 2.42
f_ref= 20*10^3;
f_osc= 10*10^6;
N1=10;N2=100;
f0=(N1*f_ref) + f_osc;
f1=(N2*f_ref) + f_osc;
disp('Hz',f1,'Hz',f0,'The output frequencies are');
step_size=(f1-f0)/(N2-N1);
disp('Hz',step_size,'The step size is');