//ques-16.3
//Finding initial concentration of the reactants
clc
//2nd order reaction
t=60;//time (in minutes)
k=5.2*10^-3;//rate constant (in L/mol/minute)
//k = x/(t*a*(a-x))
//where, x = a/2
a=1/(t*k);
printf("Initial concentration of reactants is %.1f mol/L.",a);
