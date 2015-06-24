Ndemitter=1*10^19; // donor concentration in emitter
Nabase=1*10^17; //acceptor concentration in base
de=0.8*10^-6; //spatial extent of the emitter
db=1.2*10^-6; //spatial extent of the base
alpha=2.8125;
beta=(alpha*Ndemitter*de)/(Nabase*db);
disp(beta,"Maximum forward current gain");