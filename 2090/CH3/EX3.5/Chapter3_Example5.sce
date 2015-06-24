clc
clear
//Input data
C=86;//The composition of carbon in the fuel by weight in percentage
H=14;//The composition of hydrogen in the fuel by weight in percentage
e=1.25;//Equivalent ratio
o=32;//Molecular weight of the oxygen
co=44;//Molecular weight of the carbondioxide 
c=12;//Molecular weight of the carbon
s=32;//Molecular weight of the sulphur
so=64;//Molecular weight of sulphur dioxide
n=28;//Molecular weight of the nitrogen
h2=2;//Molecular weight of the hydrogen
Fc=0.86;//Fraction of C

//Calculations
Ra=1/Fc;//Relative air/fuel ratio
x=2*[1+(0.9765/2)-(1.488*0.8)];//By oxygen balance
Tm=0.5957+0.4043+4.476;//Total number of moles of dry exhaust gas
vc=(0.5957/Tm)*100;//Volumetric analysis of carbonmonoxide of combustion in percentage
vco=(0.4043/Tm)*100;//Volumetric analysis of carbondioxide of combustion in percentage
vn=(4.476/Tm)*100;//Volumetric analysis of nitrogen of combustion in percentage

//Calculations
printf(' The percentage analysis of dry exhaust gas by volume : \n    CO = %3.2f percent \n    CO2 = %3.2f percent \n    N2 = %3.2f percent ',vc,vco,vn)
