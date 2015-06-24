
clc
clear
//Input data
C=61;//The mass of carbon present in the coal according to coal analysis on mass basis in %
H=4;//The mass of hydrogen present in the coal according to coal analysis on mass basis in %
O=3;//The mass of oxygen present in the coal according to coal analysis on mass basis in %
N=2;//The mass of nitrogen present in the coal according to coal analysis on mass basis in %
S=1;//The mass of sulphur present in the coal according to coal analysis on mass basis in %
M=4;//The mass of moisture present in the coal according to coal analysis on mass basis in %
A=25;//The mass of ash present in the coal according to coal analysis on mass basis in %
HHV=24.3;//The high heating value of the coal i.e energy released by complete combustion of 1 kg fuel in MJ/kg
CO2=12;//The amount of carbondioxide by volume according to dry flue gas analysis in %
CO=1.5;//The amount of carbonmonoxide by volume according to dry flue gas analysis in %
O2=7;//The amount of oxygen by volume according to dry flue gas analysis in %
N2=79.5;//The amount of nitrogen by volume according to dry flue gas analysis in %
Te=170;//Exhaust gas temperature in degree centigrade
L=0.03;//Energy loss other than dry exhaust loss and incomplete combustion is 3% of HHV
R=150;//Steam generation rate in t/h
Po=100;//Steam condition at boiler outlet in bar
To=500;//Steam condition at boiler outlet in degree centigrade
Ti=160;//Feed water inlet temperature in degree centigrade
HCO2=33083;//Heat of reaction in kJ/kg carbon
HCO=9500;//Heat of reaction in kJ/kg carbon
cp=1.05;//Heat capacity of dry flue gas (dfg) in kJ/kgK
Ta=30;//The ambient temperature of air in degree centigrade
Mc=44;//Molecular weight of Carbondioxide
Mco=28;//Molecular weight of carbonmonoxide
Mo=32;//Molecular weight of oxygen
Mn=28;//Molecular weight of nitrogen
Mx=12;//Molecular weight of carbon
h1=3373.7;//Enthalpy at 100 bar and 500 degree centigrade in kJ/kg
hf=675.55;//Enthalpy at 160 degree centigrade in kJ/kg
hg=2724.7;//Enthalpy at 100 bar in kJ/kg

//Calculations
Mdfg=([(C/100)*[(Mc*(CO2/100))+(Mco*(CO/100))+(Mo*(N2/100))]]/[Mx*[(CO2/100)+(CO/100)]]);//Mass of dry flue gas produced per kg of fuel in kg
Ed=Mdfg*cp*(Te-Ta);//Energy loss due to dry exhaust gas in kJ/kg fuel
//Since Mdfg is 11.73kg through sciab calculation, there is a variation in Ed value and Ei value
Ei=[(Mdfg)*(HCO2-HCO)*(Mx/Mco)]*[(Mco*(CO/100))/[(Mc*(CO2/100))+(Mco*(CO/100))+(Mo*(O2/100))+(Mco*(N2/100))]];//Energy loss due to incomplete combustion in kJ/kg fuel
El=L*HHV;//Energy loss other than dry exhaust loss and incomplete combustion loss in MJ/kg fuel
TEl=(Ed/1000)+(Ei/1000)+El;//Total energy loss in MJ/kg fuel
Be=[(HHV-TEl)/(HHV)]*100;//Boiler efficiency in %
Wf=([(R*1000)*(h1-hf)]/((Be/100)*HHV*1000))/3600;//The fuel burning rate in kg/s
Wth=(11.5*(C/100))+(34.5*[(H/100)-(O/800)])+(4.3*(S/100));//Thearetical air required per kg of fuel in kg
WA=[[(3.04*(N2/100)*(C/100))]/[(CO2/100)+(CO/100)]]-[(N/100)*(1/0.768)];//Actual air supplied per kg of fuel in kg
per=[(WA-Wth)/Wth]*100;//Percentage excess air used in %
pea=[(h1-hg)/(h1-hf)]*100;//Percentage of energy absorbed in the superheater

//Output
printf('(a)The amount of dry flue gas produced per kg fuel = %3.2f kg \n (b)The dry exhaust loss = %3.1f kJ/kg fuel and incomplete combustion loss per kg fuel = %3.2f kJ/kg fuel \n (c)The boiler efficiency = %3.2f percentage \n (d) THe fuel burning rate = %3.3f kg/s \n (e)The percentage of excess air used = %3.2f percentage \n (f) The percentage of energy absorbed in the superheater = %3.2f percentage',Mdfg,Ed,Ei,Be,Wf,per,pea)
