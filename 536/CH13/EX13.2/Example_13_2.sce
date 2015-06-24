clc;
clear;

printf("\n Example 13.2\n");

P=101.3e3; //Given pressure
T=300; //Given Temperature
RH=25; //Percentage relative humidity of water 
P_wo=3.6e3; //partial pressure of water vapour when air is saturated with vapour
M_w=18; //Molecular weight of water
M_a=29; //Molecular weight of air
R=8314; //gas constant

printf("\n (a)\n The partial pressure of the water vapour in the vessel = ")
P_w=P_wo*(RH/100);
printf("%.1f kN/m^2",P_w*1e-3);

printf("\n (b)");
m_w=P_w*M_w/(R*T);//mass of water vapour
m_a=(P-P_w)*M_a/(R*T);//mass of water air
Vs_w=1/m_w;//specific volume of water vapour at 0.9 kN/m^2
Vs_a=1/m_a;//specific volume of air at 100.4 kN/m^2
printf("\n Specific volume of water vapour = %.0f m^3/kg",Vs_w);
printf("\n Specific volume of air = %.3f m^3/kg",Vs_a);

H=m_w/m_a;//Humidity
printf("\n (a)\n Humidity of air = %.4f kg water/kg air",H);
H_v=Vs_a;//Humid volume
printf("\n Humid volume = %.3f m^3/kg",H_v);

H_p=(P-P_wo)/(P-P_w)*RH; //Percentage humidity
printf("\n (d)\n Percentage humidity = %.1f per cent",H_p)