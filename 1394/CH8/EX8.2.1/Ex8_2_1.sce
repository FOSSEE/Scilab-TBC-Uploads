

clc
//initialization of variables
kc = 3.3*10^-3 // M.T.C in cm/sec
d = 1 // density of oxygen in g/cm^3
M = 18 // Mol wt of water in g/mol
Hatm = 4.4*10^4 // Henrys constant in atm
HmmHg = Hatm*760 // Henrys constant in mm Hg
//calculations
ratio = d/(M*HmmHg)// Ratio of concentration and pressure of oxygen
kp = kc*ratio // M.T.O=C in x*10^12mol/cm^2-sec-mm Hg 
//Results
printf("the M.T.C in given units is %.1e",kp )

