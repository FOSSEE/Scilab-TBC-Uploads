//example 14
//exergy destruction during heat transfer to a gas
clear
clc
P1=350 //in kPa
V1=0.01 //in m^3
V2=0.02 //in m^3
Wb=P1*V1*log(V2/V1) //quasi equilbrium boundary work in kJ
P0=100 //atmospheric pressure in kPa
Wsurr=P0*(V2-V1) //work done against the atmospheric pressure in kJ
Wu=Wb-Wsurr //useful work in kJ
Tsys=400 //temperature of system in K
Tr=1200 //temperature temperature of the boundary in K
Q=Wb //heat transfer from furnace to system 
Sgen=Q/Tsys-Q/Tr //in kJ/K
T0=300 //temperature of atmospheric air in K
Xdestroyed=T0*Sgen //exergy destroyed in kJ
Wrevout=T0*Q/Tsys-Wsurr+(1-T0/Tr)*Q //reversible work in kJ
printf("\n The useful work output is = %.2f kJ. \n",Wu);
printf("\n The exergy destroyed is = %.2f kJ/K. \n",Xdestroyed);
printf("\n The reversible work for this process is = %.2f kJ. \n",Wrevout);