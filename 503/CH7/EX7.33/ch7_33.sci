//to determine internal em torque developed

clc;
V=250;
I_a=85;
R_a=.18;
E_a=V-I_a*R_a;
n=1100;
T=E_a*I_a/(n*2*%pi/60);
disp(T,'torque(Nm)');
T_1=.8*T;    disp(T_1,'new torque(Nm)');
//T=K_a'*K_f*I_f*I_a=K_a'*K_f*.8*I_f*I_a1    so
I_a1=I_a/.8;
E_a1=V-I_a1*R_a;
//E_a=K_a'*K_f*I_f*n
//E_a1=K_a'*K_f*.8*I_f*n1    so
n1=(E_a1/E_a)*n/.8
disp(n1,'speed is(rpm)');

