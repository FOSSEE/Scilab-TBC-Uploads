clc
clear
//DATA GIVEN
p1=15;                 //steam supply pressure in bar
x1=1;                  //quality of steam
p2=0.4;                //condenser pressure

//At 0.15 bar, from steam tables
T1=198.3+273;          //in K
hg1=2789.9;            //in kJ/kg
sg1=6.4406;            //in kJ/kgK
//At 0.4 bar, from steam tables
T2=75.9+273;           //in K
hf2=317.7;             //in kJ/kg
hfg2=2319.2;           //in kJ/kg
sf2=1.0261;            //in kJ/kgK
sfg2=6.6448;           //in kJ/kgK

ETAcarnot=(T1-T2)/T1;  //Carnot efficiency
//ETArankine=Adiabatic or isentropic heat drop/heat supplied
//ETArankine=(hg1-h2)/(hg1-hf2)
//as the steam expands isentropically, s1=s2
//sg1=sf2+x2*sfg2
x2=(sg1-sf2)/sfg2;
h2=hf2+x2*hfg2;
ETArankine=(hg1-h2)/(hg1-hf2);           //Rankine efficiency

printf(' (i) The Carnot efficiency is: %1.4f or %2.2f percent. \n',ETAcarnot,(ETAcarnot*100));
printf(' (ii) The Rankine efficiency is: %1.4f or %2.2f percent. \n',ETArankine,(ETArankine*100));
