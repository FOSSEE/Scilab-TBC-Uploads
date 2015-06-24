//to calculate electomagnetic power and torque

clc;
E_a=250;
R_a=.05;
n=3000;
w_m=(n*2*%pi)/60;
disp('when terminal voltage is 255V');
V_t=255;
I_a=(V_t-E_a)/R_a;
P_in=E_a*I_a;
disp(P_in,'electromagnetic power(W)');
T=P_in/w_m;
disp(T,'torque(Nm)');

disp('when terminal voltage is 248V');
V_t=248;
I_a=(E_a-V_t)/R_a;
P_in=E_a*I_a;
disp(P_in,'electromagnetic power(W)');
T=P_in/w_m;
disp(T,'torque(Nm)');
