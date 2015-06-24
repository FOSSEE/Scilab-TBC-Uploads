clc
clear
//Input data
P=600;//Power of an engine in kW
t=25;//Temperature at which fuel is used in degree centigrade
Ta=150;//Theoretical air used in percentage
T1=400;//The temperature at which air enters in K
T2=700;//The temperature at which the products of combustion leave in K
Q=-150;//The heat loss from the engine in kW
C=12;//Molecular weight of carbon
h=1;//Molecular weight of hydrogen

//Calculations
hfc=-259.28;//The enthalpy of the compound C8H18 for the given conditions in MJ/kmol fuel
hfo1=3.029;//The enthalpy of the oxygen gas in MJ/kmol fuel
hfn1=2.971;//The enthalpy of the nitrogen gas in MJ/kmol fuel
HR=(hfc)+(1.5*12.5*hfo1)+(1.5*12.5*3.76*hfn1);//The total enthalpy on the reactants side in MJ/kmol fuel
hfco=-393.52;//The enthalpy of carbondioxide for formation state in MJ/kmol fuel
hfco1=17.761;//The change in enthalpy of the carbondioxide for temp difference in MJ/kmol fuel
hfh=-241.82;//The enthalpy of water for formation state in MJ/kmol fuel
hfh1=14.184;//The change in the enthalpy of the water for temp difference in MJ/kmol fuel
hfo2=12.502;//The enthalpy of the oxygen gas in MJ/kmol fuel
hfn2=11.937;//The enthalpy of the nitrogen gas in MJ/kmol fuel
HP=(8*(hfco+hfco1))+(9*(hfh+hfh1))+(6.25*hfo2)+(70.5*hfn2);//The total enthalpy on the products side in MJ/kmol fuel
H=HP-HR;//The total change in enthalpy of reactants and products in MJ/kmol fuel
nf=([Q-P]*3600)/[H*10^3];//The fuel rate in kmol/s
M=(8*C)+(18*h);//Molecular weight of fuel 
mf=nf*M;//The fuel consumption in kg/h

//Output
printf(' The fuel consumption for complete combustion is %3.2f kg/h',mf)
