clear
clc

//Example 19.4
disp('Example 19.4')

//Here we have Nonlinear programming problem hence we use optim function
//Since optim does not have the ability to handle constraints
//we use the penalty method for optimization
//ie we make the constraints a part of the cost function such that 
//cost function increases severly for any violation of constraints
//MATLAB users must be familiar with fmincon function in MATLAB
//Unfortunately a similar function in Scilab is not yet available
//Fmincon toolbox development for scilab is under development/testing

x0=[2 4 4 1]'; //Initial guess

function y=func(x) //x is 4*1 vector
    P1=4.5*x(1)+0.1*x(1)^2+4*x(2)+0.06*x(2)^2;
    P2=4*x(3)+0.05*x(3)^2+3.5*x(4)+0.2*x(4)^2;
    if (P1>30) then
        c1=abs(P1-30)^2;
    elseif P1<18
        c1=abs(P1-18)^2;
        else c1=0;
    end
    if (P2>25) then
        c2=abs(P2-30)^2;
    elseif P2<14
        c2=abs(P2-18)^2;
        else c2=0;
    end
    c3=abs(P1+P2-50)^2;
    c4=abs(x(2)+x(4)-5)^2;
    y=(x(1)+x(3))+100*(c1+c2+c3+c4);
endfunction

function [f, g, ind] = costf(x, ind)
    f=func(x);//cost is negative of function to be maximised
    g=derivative(func,x);//derivative of the cost function
endfunction

[fopt, xopt] = optim(costf,"b",zeros(4,1), 10*ones(4,1),x0);
// "b",zeros(4,1), 10*ones(4,1) stands for lower and upper bounds on x

disp(xopt,"Optimum value of x=")
disp(fopt,"Min value of f=")

mprintf('Note that the answer in book is not as accurate as the one\n...
calculated from scilab')

