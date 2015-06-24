//example 5.39

clear;
clc;

disp("0.5N2(g)+1.5H2(g)<=>NH3(g)");
//Given:
T=298;//Temperature[K]
Kp=900;//Equilibrium constant for above reaction
P1=0.32;//partial pressure of N2(g)[bar]
P2=0.73;//partial pressure of H2(g)[bar]
P3=0.98;//partial pressure of NH3(g)[bar]
R=8.314;//Universal gas constant[J/K/mol]

//To find the reaction Gibb's energy
G=-R*T*log(Kp);
x=(P1^0.5)*(P2^1.5);
p=P3/x;
Gr=(G+R*T*log(p))*0.001;
printf("The reaction Gibbs free energy is %f KJ/mol ",Gr);
