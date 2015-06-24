//Application of Le chatelier's Principle

clear;
clc;

printf("\t Example 14.11\n");

//(b)
Kc=2.37*10^-3;//equilibrium constant for the reaction
N2=0.683;//conc of N2, M
H2=8.8;//conc of H2, M
NH3=3.65;//conc of NH3, M
Qc=NH3^2/(N2*H2^3);//reaction quotient initial

if(Qc==Kc) then
    d="the system is in equilibrium";
    elseif(Qc<Kc) then
         d="the system is not in equilibrium and the reaction will move from left to right";
        else d="the system is not in equilibrium and the reaction will move from right to left";
    end;

printf("\t (b) %s\n",d);

//End
