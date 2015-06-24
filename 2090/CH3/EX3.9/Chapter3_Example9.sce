clc
clear
//Input data
t=25;//Temperature at which fuel is used for combustion in degree centigrade 
p=1;//The pressure at which fuel is used in bar
T=400;//The temperature of the products of combustion in K
R=8.314*10^-3;//Universal gas constant

//Calculations
hfc=-103.85;//Enthalpy of the compound C3H8 in MJ/kmol fuel 
HR=[1*(hfc-(R*(t+273)))]+[5*(-R*(t+273))];//The total enthalpy of the reactants in MJ/kmol fuel
hfco=-393.52;//The enthalpy of the carbondioxide in MJ/kmol fuel
hfco1=4.008;//The change in enthalpy of the carbondioxide for the given conditions in MJ/kmol fuel
hfh=-241.82;//The enthalpy of the water in MJ/kmol fuel
hfh1=3.452;//The change in enthalpy of the water for the given conditions in MJ/kmol fuel
HP=[3*(hfco+hfco1-(R*T))]+[4*(hfh+hfh1-(R*T))];//The total enthalpy of the products in MJ/kmol fuel
Q=HP-HR;//The total change in the enthalpy of reactans and products in MJ/kmol fuel
Q1=-Q;//Heat liberated in kJ/mol propane

//Output
printf('The heat transfer per mole of propane = %3.1f kJ/mol propane',Q1)
