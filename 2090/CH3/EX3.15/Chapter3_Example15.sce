clc
clear
//Input data
T=600;//The initial temperature of air in K
p=1;//The initial pressure of air in atm
R=8.314;//Universal gas constant in J/molK
Tr=298;//The temperature of reactants in K
a=4.503;//Given Constant 
b=-8.965*10^-3;//Given Constant
c=37.38*10^-6;//Given Constant
d=-36.49*10^-9;//Given Constant
e=12.22*10^-12;//Given Constant

//Calculations
hfc=-393.52;//Enthalpy of formation for carbondioxide in MJ/kmol fuel
hfh=-241.82;//Enthalpy of formation for water in MJ/kmol fuel
hfn=0;//Enthalpy of formation for nitrogen gas
HP=[1*hfc]+[2*hfh]+[7.52*hfn];//The enthalpy on the products side in MJ/kmol fuel
hch=[R*[(a*(T-Tr))+((b/2)*(T^2-Tr^2))+((c/3)*(T^3-Tr^3))+((d/4)*(T^4-Tr^4))+((e/5)*(T^5-Tr^5))]]/1000;//The change in enthalpy of the methane in MJ/kmol
hfc1=-74.87;//The enthalpy of formation for methane in MJ/kmol fuel 
hfh1=9.247;//The change in enthalpy of the water in MJ/kmol
hfn1=8.891;//The change in enthalpy of nitrogen in MJ/kmol
HR=[(hfc1+hch)+(2*hfh1)+(7.52*hfn1)];//The enthalpy on the reactants side in MJ/kmol
x=HR-HP;//The enthalpy for the remaining gases in the product side in MJ/kmol
hfn2=x/7.52;//The guess enthalpy for the nitrogen gas in MJ/kmol
Tc=3700;//The corresponding temperature for the enthalpy of guess nitrogen in K
T1=2800;//The temperature assumed for the first trail in K
hco1=140.444;//The change in enthalpy for the assume temp for carbondioxide in MJ/kmol
hh1=115.294;//The change in enthalpy for the assume temp for water in MJ/kmol
hn1=85.345;//The change in enthalpy for the assume temp for nitrogen in MJ/kmol
HP1=hco1+(2*hh1)+(7.52*hn1)+(HR-x);//The total enthalpy on the products side for first trail in MJ/kmol fuel
T2=2500;//The temperature assumed for the second trail in K
hco2=121.926;//The change in enthalpy for the assume temp for carbondioxide in MJ/kmol
hh2=98.964;//The change in enthalpy for the assume temp for water in MJ/kmol
hn2=74.312;//;//The change in enthalpy for the assume temp for nitrogen in MJ/kmol
HP2=hco2+(2*hh2)+(7.52*hn2)+(HR-x);//The total enthalpy on the products side for the second trail in MJ/kmol
T3=2600;//The temperature fo the third trail in K
hco3=128.085;//The change in enthalpy for the assume temp for carbondioxide in MJ/kmol
hh3=104.37;//The change in enthalpy for the assume temp for water in MJ/kmol
hn3=77.973;//The change in enthalpy for the assume temp for nitrogen in MJ/kmol
HP3=hco3+(2*hh3)+(7.52*hn3)+(HR-x);//The total enthalpy on the products side for the third trail in MJ/kmol
Ta1=[[(HR-HP2)/(HP3-HP2)]*(T3-T2)]+T2;//The adiabatic temperature for constant pressure process in K
UR1=HR-(10.52*R*10^-3*T);//The internal energy of reactant in MJ/kmol fuel
Tc1=3000;//Assume temperature for first trail in K
hcoa1=146.645;//The change in enthalpy for the assume temp for carbondioxide in MJ/kmol
hha1=120.813;//The change in enthalpy for the assume temp for carbondioxide in MJ/kmol
hna1=89.036;//The change in enthalpy for the assume temp for nitrogen in MJ/kmol
UP1=hcoa1+(2*hha1)+(7.52*hna1)+(HR-x)-(0.08746*Tc1);//The internal energy of products in MJ/kmol fuel
Tc2=3200;//Assume temperature for the second trail in K
hcoa2=165.331;//;//The change in enthalpy for the assume temp for carbondioxide in MJ/kmol
hha2=137.553;//The change in enthalpy for the assume temp for water in MJ/kmol
hna2=100.161;//The change in enthalpy for the assume temp for nitrogen in MJ/kmol
UP2=hcoa2+(2*hha2)+(7.52*hna2)+(HR-x)-(0.08746*Tc2);//The internal energy of products in MJ/kmol fuel
Tu=[[(UR1-UP1)/(UP2-UP1)]*(Tc2-Tc1)]+Tc1;//The adiabatic flame temperature at constant pressure process in K

//Output
printf('The adiabatic flame temperature at  \n    (a)Constant pressure process is %3.0f K \n    (b)Constant volume process is %3.1f K',Ta1,Tu)



