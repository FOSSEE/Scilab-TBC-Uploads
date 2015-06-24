//A Textbook of Chemical Engineering Thermodynamics
//Chapter 8
//Phase Equilibria
//Example 19


clear;
clc;


//Given:
//Wilson constants: 
a12 = 1225.31; //(J/mol)
a21 = 6051.01; //(J/mol)
V1 = 74.05*10^-6; //(m^3/mol)
V2 = 18.07*10^-6; //(m^3/mol)

R = 8.314; //ideal gas constant
T = 349; //temperature in K

//Antoine Equation:
//Vapour pressure of 1st element
function [y1] = P1(T)
    y1 = %e^(14.39155-(2795.817/(T-43.198)))
endfunction

//Vapour pressure of 2nd element
function [y2] = P2(T)
    y2 = %e^(16.26205-(3799.887/(T-46.854)))
endfunction

//To calculate equilibrium pressure and composition
//Using eq. 8.73 (Page no. 350)
//Wilson Parameters:
W12 = (V2/V1)*%e^(-a12/(R*T));
W21 = (V1/V2)*%e^(-a21/(R*T));

//Using Antoine equation
P1_s = P1(T);
P2_s = P2(T);

//(a). Composition of vapour in equilibrium
x1 = 0.43;
x2 = 1-x1;

//Using eq. 8.72 (Page no. 350)
//Wilson equations:
//Activity coeffecient of 1st component
function [y3] = g_1(n1,n2) //n1 is mol fraction of 1 and n2 is for 2
    y3 = %e^(-log(n1 + W12*n2) + n2*((W12/(n1+W12*n2))-(W21/(W21*n1+n2))));
endfunction

//Activity coeffecint of 2nd component
function [y4] = g_2(n1,n2)
    y4 = %e^(-log(n2 + W21*n1) - n1*((W12/(n1+W12*n2))-(W21/(W21*n1+n2))));
endfunction

//Activity coeffecients:
g1 = g_1(x1,x2);
g2 = g_2(x1,x2);

P = (g1*x1*P1_s) + (g2*x2*P2_s);
y1 = (g1*x1*P1_s)/P;

mprintf('(a).');
mprintf('\n Equilibrium pressure is %f kPa',P);
mprintf('\n Composition of acetone vapour in equilibrium is %f',y1);


//(b). Composition of liquid in equilibrium
y1 = 0.8;
y2 = 1-y1;
g1 = 1; g2 = 1; //assumed activity coeffecients
P_as = 1/((y1/(g1*P1_s)) + (y2/(g2*P2_s)));

//Hit and trial method:
flag = 1;
while(flag==1)
    x1 = (y1*P_as)/(g1*P1_s);
    x2 = 1-x1;
    g1 = g_1(x1,x2);
    g2 = g_2(x1,x2);
    P_calc = 1/((y1/(g1*P1_s)) + (y2/(g2*P2_s)));
    if((P_calc-P_as)<=1) and ((P_calc-P_as)>=-1)
        flag = 0;
    else
        P_as = P_calc;
    end
end

mprintf('\n\n (b).');
mprintf('\n Equilibrium Pressure is %f kPa',P_calc);
mprintf('\n Composition of acetone in liquid in equilibrium is %f',x1);

//end