clc
clear
//Input data
E=20;//Methanol burned with excess air in percentage 
p=1;//Pressure of air in bar
t=27;//Temperature of air in degree centigrade
O=32;//The molecular weight of oxygen
N=28;//The molecular weight of nitrogen
R=8314;//Universal gas constant in Nm/kmolK
C=32;//Molecular weight of methanol
CO=44;//Molecular weight of the carbondioxide 
H=18;//Molecular weight of the water

//Calculations
S=[(1.8*O)+(6.768*N)]/C;//Stoichiometric air/fuel ratio
A=[(1.8*O)+(6.768*N)]/C;//Actual air/fuel ratio
M=1.8+6.768;//1 kmole of fuel reacts with air in kmole
V=(M*R*(t+273))/(p*10^5);//Volume of air in m^3/kmole fuel
T=(1+1.8+6.768);//The total number of moles in the reactants when excess air is supplied in moles
Cm=(1/T);//Mole fraction of the methanol
Om=(1.8/T);//Mole fraction of the oxygen
Nm=(6.768/T);//Mole fraction of the nitrogen
Mr=(Cm*C)+(Om*O)+(Nm*N);//Molecular weight of reactants 
Tp=(1+2+6.768+0.3);//Total number of moles in the products in moles
COm=(1/Tp);//Mole fraction of the carbondioxide
Hp=(2/Tp);//Mole fraction of the water 
Np=(6.768/Tp);//Mole fraction of the nitrogen
Op=(0.3/Tp);//Mole fraction of the oxygen
Mp=(COm*CO)+(Hp*H)+(Np*N)+(Op*O);//Molecular weight of products
Pp=(Hp*p);//Partial pressure of water vapour in bar
D=60;//The dew point is the saturation temp corresponding to partial pressure in degree centigrade

//Output
printf(' (a) The volume of air supplied per kmole of fuel = %3.1f m^3/kmole fuel \n (b) The molecular weight of the reactants = %3.2f \n The molecular weight of the products = %3.2f \n (c) The dew point of the products = %3.0f degree centigrade ',V,Mr,Mp,D)
