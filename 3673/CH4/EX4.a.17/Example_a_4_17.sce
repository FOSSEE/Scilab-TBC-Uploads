//Example_a_4_17 page no:182
clc;
P=0.03;
x0=0;
x1=0.01;
Vav=(1/P)*((20*x1)-(20*x0));
Veff=sqrt((1/P)*(20^2*x1));
form_factor=Veff/Vav;
disp(form_factor,"the form factor is");
//in textbook calculation of Veff is wrong so the form factor value varies in textbook
