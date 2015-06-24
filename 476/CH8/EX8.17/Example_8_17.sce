//A Textbook of Chemical Engineering Thermodynamics
//Chapter 8
//Phase Equilibria
//Example 17


clear;
clc;


//Given:
P = 40.25; //total pressure (kPa)
y1 = 0.566; //mol fraction of benzene in vapour phase
x1 = 0.384; //mol fraction of benzene in liquid state
P1 = 29.6; //vapour pressure of benzene (kPa)
P2 = 22.9; //vapour pressure of ethanol (kPa)

//To determine the composition and total pressure of azeotrope
x2 = 1-x1;
y2 = 1-y1;

//Using eq. 8.47 (Page no. 325)
//Activity coeffecients:
g1 = (y1*P)/(x1*P1);
g2 = (y2*P)/(x2*P2);

//Using eq. 8.69 (Page no. 348)
//van Laar constants:
A = log(g1)*((1 + (x2*log(g2))/(x1*log(g1)))^2);
B = log(g2)*((1 + (x1*log(g1))/(x2*log(g2)))^2);

//Assuming azeotropic comp. (for hit and trial method)
x1 = 0.4;
flag = 1;
while(flag==1)
    x2 =1-x1;
    ln_g1 = (A*x2^2)/(((A/B)*x1 + x2)^2);
    ln_g2 = (B*x1^2)/((x1 + (B/A)*x2)^2);
    g1 = %e^ln_g1;
    g2 = %e^ln_g2;
    P_1 = g1*P1;
    P_2 = g2*P2;
    if((P_1-P_2)<=1) and ((P_1-P_2)>=-1)
        flag = 0;
    else
        x1 = x1+0.1;
    end
end

mprintf('Azeotropic compositon of benzene is %i percent',x1*100);
mprintf('\n Total pressure of azeotrope is %f kPa',(P_1+P_2)/2);

//end