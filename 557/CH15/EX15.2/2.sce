clc; funcprot(0);//Example 15.2 

//Initializing the variables
Q = 0.5;
C = 80;
i = 1/2000;

//Calculations
function[y] = f(D)
    y = (7/4)*C*D^(5/2)*sqrt(i/2) -Q;
endfunction
disp(fsolve(2,f), "Optimum depth = Optimum Width (in metres):");