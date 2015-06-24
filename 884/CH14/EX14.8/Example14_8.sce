//Predicting the direction of a reaction

clear;
clc;

printf("\t Example 14.8\n");

Kc=1.2;//equilibrium constant for the reaction
N2=.249/3.5;//conc of N2, M
H2=(3.21*10^-2)/3.5;//conc of H2, M
NH3=(6.42*10^-4)/3.5;//conc of NH3, M

Qc=NH3^2/(N2*H2^3);//reaction quotient initial

if(Qc==Kc) then
    d="the system is in equilibrium";
elseif(Qc<Kc) then
    d="the system is not in equilibrium and the reaction will move from left to right";
else d="the system is not in equilibrium and the reaction will move from right to left";
    end;

printf("\t %s\n",d);

//End
