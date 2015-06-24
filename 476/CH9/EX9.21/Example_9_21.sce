//A Textbook of Chemical Engineering Thermodynamics
//Chapter 9
//Chemical Reaction Equilibria
//Example 21


clear;
clc;


//Given:
//Reaction: CaCO3(s) --> CaO(s) + CO2(g)
T = 1000; //temperature of reaction in K
P = 1; //pressure in bar
R = 8.314; //ideal gas constant

//Function for standard free energy of the reaction
function [y] = G(T)
    y = 1.8856*10^5 - 243.42*T + 11.8478*T*log(T) - 3.1045*10^-3*T^2 + 1.7271*10^-6*T^3 - (4.1784*10^5)/T
endfunction

//To calculate the decomposition pressure and temperaure at 1 bar
Go = G(T);
K = %e^(-Go/(R*T));
//Using eq. 9.75 (Page no. 432)
p_CO2 = K; //decomposition pressure
mprintf('Decomposition pressure of limestone at 1000 K s %f bar',p_CO2);

//At pressure = 1 bar
K = 1;
Go = 0; //since K = 1

T = 1160; //assumed temperature (K)
flag = 1;
while(flag==1)
    res = round(G(T));
    if(res<=0)
        flag = 0;
    else
        T = T+1;
    end
end
mprintf('\nDecomposition temperature at 1 bar is %i K',T);

//end