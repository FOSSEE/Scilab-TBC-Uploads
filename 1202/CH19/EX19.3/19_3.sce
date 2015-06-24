clear
clc

//Example 19.3
disp('Example 19.3')

//function for minimization
c=-[-24.5 -16 36 24 21 10]';
//Equality Constraints
Aeq=[0.80 0.44 -1 0 0 0;0.05 0.1 0 -1 0 0;0.1 0.36 0 0 -1 0;0.05 0.1 0 0 0 -1];
beq=zeros(4,1);
//Inequality Constraints
A=[0 0 1 0 0 0;0 0 0 1 0 0;0 0 0 0 1 0];
b=[24000 2000 6000]';
//Lower bound on x
lb=zeros(6,1);
//Initial guess: such that it satisfies Aeq*x0=beq
x0=zeros(6,1);
x0(1:2)=[5000 3000]';//Initial guess for x1 and x2
x0(3:6)=Aeq(:,3:6)\(beq-Aeq(:,1:2)*x0(1:2));//solution of linear equations
//Note that x0 should also satisfy A*x0<b and lb


[xopt,fopt]=karmarkar(Aeq,beq,c,x0,[],[],[],[],A,b,lb)

disp(xopt,"Optimum value of x=")
mprintf("\nMax value of f=$ %f /day\n",-fopt)

mprintf('\n Note that the answer in book is not as accurate as the one\n...
 calculated from scilab')




