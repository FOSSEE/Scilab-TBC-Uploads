//To determine the maximum stresses in each of the three layers .
clear
clc;
r=.9;
r1=1.25
r2=r1+.35;
r3=r2+.35;// radius of outermost layer
Vd=20;// voltage difference (kV)
g1max=Vd/(r*log(r1/r));
g2max=Vd/(r1*log(r2/r1));
g3max=(66-40)/(r2*log(r3/r2));
mprintf("g1max =%.1f kV/cm\n",g1max);
mprintf("g2max =%.2f kV/cm\n",g2max);
mprintf("g3max =%.0f kV/cm\n",g3max);
