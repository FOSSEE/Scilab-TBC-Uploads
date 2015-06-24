
clc
clear
//Input data
CO2=13.2;//The volume of carbondioxide present in the partial analysis of dry flue gas in %
O2=3.2;//The volume of oxygen present in the partial analysis of dry flue gas in %
C=88;//The mass of carbon present in the coal according to coal analysis on mass basis in %
H=4.4;//The mass of hydrogen present in the coal according to coal analysis on mass basis in %
A=7.6;//The mass of ash present in the coal according to coal analysis on mass basis in %
M=0;//Moisture present in the fuel was nil
Mc=12;//Molecular weight of the carbon 
Mh=2;//Molecular weight of the hydrogen
Mo=32;//Molecular weight of the oxygen
Mho=18;//Molecular weight of water
p=101.325;//Atmospheric pressure in kPa

//Calculations
c=C/Mc;//Equating coefficients of the carbon from the equation 
g=H/Mh;//Equating coefficients of the hydrogen from the equation 
x=(CO2/100)/(O2/100);//From dry fuel gas analysis (dfg) 
d=[[(CO2/100)*(47.5)]-7.333]/[[(CO2/100)*(3.032)]-1];//Coefficient of the carbonmonoxide in the equations product side
b=c-d;//Coefficient of the carbondioxide in the equation product side
a=10.21-(0.742*d);//Coefficient of the oxygen in the reactant side of the equation 
e=b/x;//Coefficient of the oxygen in the product side of the equation 
f=3.76*a;//Equating coefficients of the nitrogen from the equation 
ma=(a*Mo)/0.232;//Mass of air supplied for 100 kg coal in kg
ma1=ma/100;//Mass of air supplied per kg coal in kg
T=b+d+e+f;//Total number of moles of dry flue gas (dfg)
CO21=(b/T)*100;//Carbondioxide by volume in percentage
O21=(e/T)*100;//Oxygen by volume in percentage
CO1=(d/T)*100;//Carbonmonoxide by volume in percentage
N21=(f/T)*100;//Nitrogen by volume in percentage
Mwv=(g*Mho)/100;//Mass of watervapour formed per kg coal in kg
Mf=(g)/(b+d+e+f+g);//Mole fraction of water vapour in flue gas
P=Mf*p;//Partial pressure of water vapour in kPa
D=32.9;//Dew point temperature from steam tables in degree centigrade

//Output
printf('(a)The complete volumetric composition of the dry flue gas is \n Carbondioxide by volume = %3.2f percentage \n Oxygen by volume = %3.2f percentage \n Carbonmonoxide by volume = %3.2f percentage \n Nitrogen by volume = %3.2f percentage \n (b) The actual amount of air supplied per kg coal = %3.2f kg \n (c) Mass of water vapour formed per kg coal = %3.2f kg \n (d) The dew point temperature of the flue gas = %3.2f degree centigrade ',CO21,O21,CO1,N21,ma1,Mwv,D)
