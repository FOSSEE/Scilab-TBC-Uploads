clc();
clear;

// To know the moisture content of air

Td=70+460;                               // Dry bulb temperature in degR
Tw=60+460;                               // Wet bulb temperature in degR
a=0.26;                                  // Ratio of coefficients ie. h/hmw from table 
L=1059.9;                                // Latent heat Btu/lbmol
p=14.7;                                  // Atmospheric pressure in psi
pa=0.259;                                // Partial pressure of water in psi
Ma=18;                                   // Molecular weight of water vapour 
Mb=29;                                   // Molecular weight of air

Wwb=pa*Ma/(Mb*(p-pa));                   // Absolte dry bulb humidity of air
Wdb=Wwb-(a*(Td-Tw)/L);                   // Absolte dry bulb humidity of air
printf("The humidity of air at dry conditions is %.5f lbm/lbm of dry air",Wdb);
 