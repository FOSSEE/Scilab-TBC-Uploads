// scilab Code Exa 18.3 Irreversible flow in nozzles
pr=0.843; // pr=p/p0
n_n=0.95; // nozzle efficiency
gamma=1.4;
Ms=0.5; // from gas tables for gammma and pr value
Ma=sqrt((2/(gamma-1))*(n_n/(1-n_n+(2/((gamma-1)*(Ms^2))))));
disp(Ma,"actual value of the Mach number is")
