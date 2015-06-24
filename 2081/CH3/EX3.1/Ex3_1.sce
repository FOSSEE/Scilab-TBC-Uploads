Antennagain=5
Pt=113
Gt=10^(Antennagain/10)
EIRP=Pt*Gt//effective isotrophic radiated power
r=11*10^3
Pd=EIRP/(4*%pi*r*r)//power density
printf('\nEIRP=%.1f W',EIRP);
printf('\npower density= %.f nW/m^2',Pd*10^9)
