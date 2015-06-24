
clc
//Initialization of variables
k1 = 3.0*10^-4 // m.t.c in benzene in cm/sec
k2 = 2.4*10^-3 // m.t.c in water in cm/sec
ratio = 150 // Solubility ratio in benzene to water
//Calculations
K1 = (1/((1/k1)+(ratio/k2)))*10^5 // Overall m.t.c through benzene phase in x*10^-5 cm/sec
//Results
printf("The overall M.T.C through benzene phase is %.1f x10^-5 cm/sec",K1)
