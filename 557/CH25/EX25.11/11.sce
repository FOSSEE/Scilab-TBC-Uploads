clc; funcprot(0);
//Example 25.11 

//Initializing the variables
Co = 0;
Qc = 0.0024;
V = 5400;
c = 10;
//Calculations
function[y] =  partA(n)
    Ci = 10;
    t = 10^1000; // infinity (a very large number)
    Q = V*n/3600;
    y =  (Co + 10000*Qc/Q)*(1-%e^(-n*t)) + Ci*%e^(-n*t) - c;
endfunction  

Sol_A = fsolve(1,partA);

function[y] =  partB(n)
    Ci = 0;
    t = 1; // time in hours
    Q = V*n/3600;
    A = Co + 10000*Qc/Q; 
    B = Ci*%e^(-n*t) - c;
    y =  A*(1-%e^(-n*t)) + B;
endfunction  

Sol_B = fsolve(1,partB); 

function[y] =  partC(c)
    Ci = 0;
    n = 1;
    t = 0.333333; // 20 minutes in hours
    Q = V*n/3600;
    y =  (Co + 10000*Qc/Q)*(1-%e^(-n*t)) + Ci*%e^(-n*t) - c; 
endfunction  

Sol_C = fsolve(1,partC);

function[y] =  partD(t)
    Ci = 10;
    n = 1; 
    c = 0.1;
    y = Ci*%e^(-n*t) - c; 
endfunction  

Sol_D = fsolve(0.001 , partD);


disp(Sol_D,"Part(D) : time necessary to run the ventilation system at the rate calculated in (b) to reduce the concentration to 0.001 per cent (in hours) :", Sol_C,"Part(C) :the concentration after 20 minutes (Parts per 10000) :",Sol_B,"Part(B) : number of air changes per hour if this maximum level is reached after 1 hour and the garage is out of use :" , Sol_A,"Part(A) : number of air changes per hour if the garage is in continuous use and the maximum permissible concentration of carbon monoxide is 0.1 per cent. :");