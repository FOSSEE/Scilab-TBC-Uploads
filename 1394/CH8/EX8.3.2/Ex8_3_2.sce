
clc
//Initialization of variables
Dw = 1*10^-5 // Diffusion co efficient in cm^2/sec
omeg = 20*2*%pi/60 // disc rotation in /sec
Nuw = 0.01 // Kinematic viscousity in water in cm^2/sec
Da = 0.233 // Diffusion co efficient in cm^2/sec
Nua = 0.15 // Kinematic viscousity in air in cm^2/sec
c1satw = 0.003 // Solubility of benzoic acid in water in gm/cm^3
p1sat = 0.30 // Equilibrium Vapor pressure in mm Hg
ratP = 0.3/760 // Ratio of pressures
c1 = 1/(22.4*10^3) // Moles per volume
c2 = 273/298 // Ratio of temperatures
c3 = 122 // Grams per mole
//Calculations
kw = 0.62*Dw*((omeg/Nuw)^0.5)*((Nuw/Dw)^(1/3))// cm/sec
Nw = kw*c1satw*10^6 // mass flux in x*10^-6 in g/cm^2-sec
ka = 0.62*Da*((omeg/Nua)^0.5)*((Nua/Da)^(1/3))//cm/sec
c1sata = ratP*c1*c2*c3// Solubility of benzoic acid in air in gm/cm^3
Na = ka*c1sata*10^6  // mass flux in x*10^-6 in g/cm^2-sec
//Results
printf ("the mass flux in water is %.1f x10^-6 g/cm^2-sec",Nw)
printf("\n the mass flux in air is %.1f x10^-6 g/cm^2-sec",Na)

