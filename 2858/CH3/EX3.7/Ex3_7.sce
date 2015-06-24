//example 3.7
clc; funcprot(0);
e=0.15;
B=1.5;
Fqs=1;
L=1.5;
Gamma=18;
q=0.7*18;
//from table
Nqe=18.4;
Nye=11.58;
Fys=1+(2*e/B-0.68)*(B/L)+(0.43-3/2*e/B)*(B/L)^2;
Qult=B*L*(q*Nqe*Fqs+1/2*Gamma*Nye*Fys);
disp(Qult,"ultimate load in kN");

