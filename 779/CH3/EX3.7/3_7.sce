SH = 0.9; // Specific heat of alluminium in solid state 
L = 390; // Latent heat
aw = 27; // Atomic weight
D = 2400; // Density in molten state
Tf = 700+273; // Final temperature
Tm = 660+273; // Melting point of aluminium
Ti = 15+273; // Intial temperature
HR = SH*(Tm-Ti)+L+(29.93/27)*(Tf-Tm); // Heat requires
HS = HR/0.7 ; // Heat supplied
RM = 217*1000*3600/HS ; // From the data of problem 3.7
V = 2.18; // Volume
M = V*D;
disp("tonnes",M*0.001,"Mass of alluminium that can be melted is")
disp("kg/h",RM,"Rate at which alluminium can be melted is")