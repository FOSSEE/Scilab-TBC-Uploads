//example 3.5
clc; funcprot(0);
e=0.5;
B=6;
k=e/B;
Gamma=110;
q=440;
disp("get the values of Nqe and Nye from the figure from the value of e/B");
Nye=26.8;
Nqe=33.4;
Qult=B*1*(q*Nqe+1/2*Gamma*B*Nye);
disp(Qult,"ultimate bearing capacity in lb/ft");
disp(Qult/2000,"ultimate bearing capacity in ton/ft");

