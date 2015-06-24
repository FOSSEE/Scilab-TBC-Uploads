clc
clear
//Input data
C=0.86;//The amount of carbon content in the 1kg of fuel by weight in kg
H=0.05;//The amount of hydrogen content in the 1kg of fuel by weight in kg
O=0.02;//The amount of oxygen content in the 1kg of fuel by weight in kg
S=0.005;//The amount of sulphur content in the 1kg of fuel by weight in kg
N=0.065;//The amount of nitrogen content in the 1kg of fuel by weight in kg
E=25;//The amount of excess air supplied in percentage
o=32;//Molecular weight of the oxygen
co=44;//Molecular weight of the carbondioxide 
c=12;//Molecular weight of the carbon
s=32;//Molecular weight of the sulphur
so=64;//Molecular weight of sulphur dioxide
n=28;//Molecular weight of the nitrogen

//Calculations
o1=(o/c)*C;//The amount of oxygen required for 0.86 kg of carbon in kg
coa=(co/c)*C;//The amount of carbondioxide produced for 0.86 kg of carbon in kg
o2=(o/4)*H;//The amount of oxygen required for 0.05 kg of hydrogen in kg
h2=(36/4)*H;//The amount of water produced for 0.05 kg of hydrogen in kg
o3=(o/s)*S;//The amount of oxygen required for 0.005 kg of sulphur in kg
s1=(so/s)*S;//The amount of sulphur dioxide produced for 0.005 kg of sulphur in kg
To=o1+o2+o3;//Total oxygen required for the complete combustion of fuel in kg
Tt=To-O;//The amount of oxygen required per kg of fuel for complete combustion theoretically in kg
As=(Tt*100)/23;//Stoichiometric air/fuel ratio
as=As*(1+(E/100));//The actual quantity of air supplied per kg of fuel in kg
o2a=0.23*(E/100)*As;//The oxygen in the excess air in kg
n2a=0.77*(1+(E/100))*As;//The nitrogen in the air in kg
n2e=n2a+N;//Total nitrogen in the exhaust in kg
Tw=coa+n2e+o2a;//Total weight in kg
pco=(coa/Tw)*100;//Percentage composition of carbondioxide
pn=(n2e/Tw)*100;//Percentage composition of nitrogen
po=(o2a/Tw)*100;//Percentage composition of oxygen
mco=(coa/co);//Moles of carbondioxide
mn=(n2e/n);//Moles of nitrogen
mo=(o2a/o);//Moles of oxygen
Tm=mco+mn+mo;//Total moles
vco=(mco/Tm)*100;//Volumetric analysis of carbondioxide in percentage
vn=(mn/Tm)*100;//Volumetric analysis of nitrogen in percentage
vo=(mo/Tm)*100;//Volumetric analysis of oxygen in percentage

//Output
printf(' (a)Stoichiometric air/fuel ratio = %3.2f \n (b)The percentage of dry products of combustion by weight : \n   CO2 = %3.2f percent \n   N2 = %3.2f percent \n   O2 = %3.2f percent \n (c)The percentage of dry products of combustion by volume : \n   CO2 = %3.2f percent \n   N2 = %3.2f percent \n   O2= %3.2f percent ',As,pco,pn,po,vco,vn,vo)
