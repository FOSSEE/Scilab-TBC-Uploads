clc
clear
//Input data
T=1500;//The given temperature in K

//Calculations
hfco=-393.52;//The enthalpy of formation for carbondioxide in MJ/kmol
hf1=61.714;//The change in enthalpy for actual state and reference state in MJ/kmol
HP=hfco+hf1;//The total enthalpy in the products side in MJ/kmol
hfc=-110.52;//The enthalpy of formation for carbonmonoxide in MJ/kmol
hf2=38.848;//The change in enthalpy of CO for actual and reference state in MJ/kmol
hfo=0;//The enthalpy of formation for oxygen gas
hf3=40.61;//The change in enthalpy of oxygen for different states in MJ/kmol
HR=[hfc+hf2]+[0.5*(hfo+hf3)];//The total enthalpy in the reactants side in MJ/kmol
H=HP-HR;//The enthalpy of combustion in MJ/kmol 

//Output
printf(' The enthalpy of combustion is  %3.3f MJ/kmol CO ',H)
