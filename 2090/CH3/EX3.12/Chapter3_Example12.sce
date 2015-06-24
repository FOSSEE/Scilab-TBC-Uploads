clc
clear
//Input data
Ta=150;//The presence of Theoretical air

//Calculations
hfc=-393.52;//The enthalpy of formation for carbondioxide in MJ/kmol
hfh=-285.8;//The enthalpy of formation for water in MJ/kmol
hfon=0;//The enthalpy of formation for oxygen and nitrogen gas 
hfch=-74.87;//The enthalpy of formation for methane in MJ/kmol
HP=[hfc]+[2*hfh];//The total enthalpy on the products side in MJ/kmol
HR=1*hfch;//The total enthalpy on the reactants side in MJ/kmol
H=HP-HR;//The total change in enthalpy of reactants and products in MJ/kmol
np=2;//Number of moles of product
nr=4;//Number of moles of reactant
n=np-nr;//The difference in moles
R=8.314*10^-3;//Universal gas constant 
t=298;//The temperature in K
U1=H-[n*R*t];//The standard internal energy in MJ/kmol
hfh1=-241.82;//The enthalpy of formation for water in MJ/kmol
HP1=[1*hfc]+[2*hfh1];//The total enthalpy on the products side in MJ/kmol
H1=HP1-HR;//The change in enthalpy for reactants and products in MJ/kmol
np1=4;//Number of moles of product
nr1=4;//Number of moles of reactant
n1=np1-nr1;//The difference in moles
U2=H1-[n1*R*t];//The standard internal energy in MJ/kmol

//Output
printf(' (a)The water as liquid , \n    The standard enthalpy of combustion is  %3.2f MJ/kmol \n    The standard internal energy of combustion is  %3.2f MJ/kmol \n (b)The water as a gas , \n    The standard enthalpy of combustion is  %3.2f MJ/kmol \n    The standard internal energy of combustion is  %3.2f MJ/kmol ',H,U1,H1,U2)
