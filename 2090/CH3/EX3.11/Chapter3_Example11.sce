clc
clear
//Input data
E=30;//The amount of excess air in percentage
tp=400;//The temperature at which propane enters in K
ta=300;//The temperature at which air enters in K
T=900;//The temperature at which products leave in K
m=83.7;//The average molar specific heat of propane at constant pressure in kJ/kmolK
Mp=44;//The molecular weight of propane

//Calculations
hfc=-393.52;//The enthalpy of formation for carbondioxide in MJ/kmol
hf1=28.041;//The change in enthalpy of CO2 for actual and reference state in MJ/kmol
hfh=-241.82;//The enthalpy of formation for water in MJ/kmol
hf2=21.924;//The change in enthalpy of water for actual and reference state in MJ/kmol
hfn=0;//The enthalpy of nitrogen gas 
hf3=18.221;//The change in enthalpy of nitrgen for actual and reference state in MJ/kmol
hfo=0;//The enthalpy of oxygen gas 
hf4=19.246;//The change in enthalpy of oxygen for actual and reference state in MJ/kmol
HP=[3*(hfc+hf1)]+[4*(hfh+hf2)]+[24.44*(hfn+hf3)]+[1.5*(hfo+hf4)];//The total enthalpy in the products side in MJ/kmol
hfp=-103.85;//The enthalpy of formation for propane in MJ/kmol
R=0.0837;//Universal gas constant 
hfo1=0;//The enthalpy of oxygen gas 
hf11=0.054;//The change in enthalpy of oxygen gas for actual and reference state in MJ/kmol
hfn1=0;//The enthalpy of nitrogen gas
hfn22=0.054;//The change in enthalpy of nitrogen for actual and reference state in MJ/kmol
HR=[1*(hfp+(R*(tp-ta)))]+[6.5*(hfo1+hf11)]+[24.44*(hfn1+hfn22)];//The total enthalpy on the reactants side in MJ/kmol
Q=HP-HR;//The amount of heat liberated in MJ/kmol
Q1=[-Q/Mp];//The amount of heat liberated in MJ/kg

//Output
printf(' The amount of heat transfer per kg of fuel is  %3.0f MJ/kg',Q1)
