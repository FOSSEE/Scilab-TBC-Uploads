

//exapple 5.7 
clc; funcprot(0);
// Initialization of Variable
G=338;//mass flow rate
rho=998;
q=G/rho;
E=0.48;
n=0.015;
g=9.81;
B=0.4;
y=poly([5.85/1000 0 -E 1],'x','coeff');
x=roots(y);
disp(x(1),x(2),"alternate depths (m):");
s=(G*n/rho/x(2)/(B*x(2)/(B+2*x(2)))^(2/3))^2
disp(s,"slode when depth is 12.9cm");
s=(G*n/rho/x(1)/(B*x(1)/(B+2*x(1)))^(2/3))^2
disp(s,"slode when depth is 45.1cm");
