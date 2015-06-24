//A Textbook of Chemical Engineering Thermodynamics
//Chapter 8
//Phase Equilibria
//Example 20


clear;
clc;


//Given:
P = 101.3; //total pressure of system (kPa)
T = 337.5; //temperature in K
x1 = 0.842;

//Antoine constants
//For methanol(1)
A1 = 16.12609;
B1 = 3394.286;
C1 = 43.2;

//For methyl ethyl ketone (2)
A2 = 14.04357;
B2 = 2785.225;
C2 = 57.2;

//To determine parameters in Wilson's equation
P1_s = %e^(A1-(B1/(T-C1)));
P2_s = %e^(A2-(B2/(T-C2)));
x2 = 1-x1;
g1 = P/P1_s;
g2 = P/P2_s;

//Using eq. 8.72 and rearranging:
function [y1] = Wils(n) //n is the Wilson's parameter W12
    y1 = (((g1*x2)/(1-(n*x1/(x1+n*x2))+(x1/x2)*log(g1*(x1+n*x2))))^(x2/x1))*(g1*(x1+n*x2));
endfunction

flag = 1;
W12 = 0.5; //assumed value
while(flag==1)
    res = Wils(W12);
    if ((res-1)>=-0.09)
        flag = 0;
    else
        W12 = W12+0.087;
    end
    
end

//For 2nd Wilson parameter:
//Using eq. 8.72 and rearranging:
k = log(g1*(x1+W12*x2))/x2 - (W12/(x1+W12*x2));
W21 = (-k*x2)/(1+k*x1);

mprintf("wilson parameters are: %f, %f',W12,W21);

//end