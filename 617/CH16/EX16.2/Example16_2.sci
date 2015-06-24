clc();
clear;

// To compute the diffusion coeffiient for benzene in air

T=25+273;                        // Temperature in degK
p=1;                             // Pressure in atm
Va=96;                           // Molecular volume of benzene in cm^3/gm-mol
Vb=29.9;                         // Molecular volume of air in cm^3/gm-mol 
Ma=78;                           // Molecular weight of benzene in gm/mol
Mb=29;                           // Molecular weight of air in gm/mol
Dab=0.0043*(T^1.5)*sqrt((1/Ma)+(1/Mb))/(p*(Va^(1/3)+Vb^(1/3))^2);
printf("The diffusion coefficient is %.3f cm^3/sec ",Dab);