clc
Nc_Si = 2.78*10^19
disp("Nc_Si = "+string(Nc_Si)+"cm^-3") //initializing value of effective density of electron for silicon
Nc_GaAs = 4.45*10^17
disp("Nc_GaAs = "+string(Nc_GaAs)+"cm^-3") //initializing value of effective density of electron for GaAs
disp("for joyce dixon approximation the carrier concentration and fermi level are related as : Ef -Ec = kBT*(log(n/Nc)+(n/(sqrt8*Nc))")
disp("using Ef-Ec = 3* kBT") 
disp("solving above equation by hit and trial method for n/Nc,we get n/Nc = 4.4") 
n_by_Nc = 4.4
n_Si = n_by_Nc*Nc_Si
disp("carrier density for silicon is n= n_by_Nc*Nc_Si= "+string(n_Si)+"cm^-3")//calculation
n_GaAs = n_by_Nc*Nc_GaAs
disp("carrier density for GaAs is n= n_by_Nc*Nc_GaAs= "+string(n_GaAs)+"cm^-3")//calculation
