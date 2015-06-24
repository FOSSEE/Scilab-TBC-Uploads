clc;
T0=313; // Surroundings temperature in kelvin
TL=233; // Refrigerated space temperature in kelvin
QL=3.5167; // Refrigeration load in kW
// (a).Carnot cycle
COPcarnot=TL/(T0-TL); // COP of carnot cycle
Wcarnot=QL/COPcarnot; // Work done
Q0=QL+Wcarnot; // Heat rejected
d_SL=-QL/TL;//  Entropy change of refrigerated space
d_S0=Q0/T0; //Entropy change of surroundings
d_Sgen= d_SL+ d_S0; // Entropy generation
disp (COPcarnot,"COP of carnot cycle = ","kW",Wcarnot,"Work done = ","(a).Carnot cycle");
printf (" \n Entropy generation = %d  \n \n kJ/K s \n",d_Sgen);
// (b).Vapour compression cycle
// From Freon-12 property table & figure 10.17
p1=0.0642; p2=0.9607; // Pressure in MPa
h1=169.5; h3=74.5; // specific enthalpy in kJ/kg 
s1=0.7269; s3=0.2716;// specific entropy in kJ/kg K
// By calculations s2=s1 gives the following from property table
t2=58.9; // Temperature in degree celcius
h2=217.6; // specific enthalpy in kJ/kg 
// From h4=h3 gives the following from chart
h4=h3;
x4=0.44; // Quality of vapour
s4=0.3195;// specific entropy in kJ/kg K
m=QL/(h1-h4); // Mass flow rate of refrigerant
W=m*(h2-h1); // Work done of vapour compression cycle
COP=QL/W; // COP of vapour compression cycle
QH=QL+W; // Heat rejected to surroundings
d_SL=-QL/TL;//  Entropy change of refrigerated space
d_S0=QH/T0; //Entropy change of surroundings
d_Sgen= d_SL+ d_S0; // Entropy generation
disp (COP,"COP of vapour compression cycle = ","kW",W,"Work done = ","(b).Vapour compression cycle");
printf (" \n Entropy generation = %f \n \n kJ/K s \n",d_Sgen);
// (c).Difference in work = Lost work of the cycle
d_work=W-Wcarnot; // Difference in work
LWcycle=QH-T0*QL/TL; // Lost work of the cycle
disp ("which is same as Difference in work","kW",LWcycle,"Lost work of the cycle= ","kW",d_work,"Difference in work = ","(c).Difference in work = Lost work of the cycle");
// (d).Second Law efficiency of the vapour compression cycle
eff_II=COP/COPcarnot; //Second Law efficiency
disp ("%",eff_II*100,"(d).Second Law efficiency of the vapour compression cycle = ");
