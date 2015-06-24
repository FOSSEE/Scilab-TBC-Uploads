//example 18.5
clc; funcprot(0);
// Initialization of Variable
F=0.738;//F0---l1' mum
F1=0.014;//F0---l1 mum
sigma=5.67e-8;
Ts=300;
Tf=1200;
alpha=0.8*F+0.1*(1-F);
disp(alpha,"total absorvity")
epsilon=0.8*F1+0.1*(1-F1);
disp(epsilon,"emmisivity");
qrad=epsilon*sigma*Ts^4-alpha*sigma*Tf^4;
disp(qrad/1000,"total emissice power in kW/m^2");
disp("epsilon=alpha=0.62 for final condition");
clear()
