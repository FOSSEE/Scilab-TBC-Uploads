
clc
clear
//Input data
C=84;//The mass of carbon present in the fuel in %
H=10;//The mass of hydrogen present in the fuel in %
S=3.2;//The mass of sulphur present in the fuel in %
O=1.6;//The mass of oxygen present in the fuel in %
I=1.2;//The mass of incombustible in the fuel in %
X=15.72;//The flue gas of combined CO2 and SO2 by volume in %
Og=1;//The flue gas of O2 by volume in %
Y=100;//Let us consider the fuel oil in kg
C1=12;//Molecular weight of Carbon 
H1=2;//Molecular weight of hydrogen
S1=32;//Molecular weight of sulphur
O1=32;//Molecular weight of oxygen
Co2=44;//Molecular weight of carbondioxide
So2=64;//Molecular weight of sulphurdioxide
N1=28;//Molecular weight of nitrogen 
H2O=18;//Molecular weight of water

//Calculations
b=C/C1;//Equating coefficients of the carbon from equation
g=H/H1;//Equating coefficients of the hydrogen from equation
d=S/S1;//Equating coefficients of the sulphur from the equation
e=(b+d)/(X/Og);//By volumetric analysis
x=b+d+e+(g/2)-(O/O1);//Moles of oxygen are supplied for combustion
f=3.76*x;//Equating coefficients of the nitrogen from equation
Mo=x*O1;//Mass of oxygen supplied in kg
Ma=Mo/0.232;//Mass of air supplied for 100 kg of fuel in kg
Wa=Ma/100;//Mass of air supplied for 1 kg fuel in kg
Wrh={(11.5*C)+(34.5*[(H)-(O/8)])+(4.3*S)}/100;//Theoretical air required per kg of fuel in kg
E=[(Wa-Wrh)/Wrh]*100;//Percentage of excess air in %
D=(b*Co2)+(d*So2)+(e*O1)+(f*N1);//Mass of dry flue gas formed for 100 kg fuel in kg
dfg=D/100;//Mass of dry flue gas formed per kg of fuel in kg
Mw=(g*H2O)/100;//Mass of water vapour formed per kg of fuel

//Output
printf('(a) Mass of air supplied WA = %3.2f kg \n (b)Percentage excess air supplied = %3.2f percentage \n (c)mass of dry flue gas formed = %3.2f kg \n (d) Mass of water vapour formed = %3.2f kg',Wa,E,dfg,Mw)
