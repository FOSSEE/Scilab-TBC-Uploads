clc;funcprot(0); //Example 6.9

//Initializing the variables 
r1 = 0.2;
Z1 = 0.500;
Z2 = 0.340;
g = 9.81;
rho = 0.9*1000 ;

//Calculations
r0 = r1*(sqrt(2-2*Z2/Z1));
omega =  sqrt(2*g*Z1/r0^2);

function[out]=G(r)
    out =r^3 - r*r0^2;
endfunction

F = rho*omega^2*%pi*intg(r0,r1,G);

disp(F,"Part(b) Upward force on the cover (N): ",omega ,"Part(a) Speed of rotation (rad/s ):");