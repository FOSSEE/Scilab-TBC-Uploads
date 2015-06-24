clc
clear
//Input data
E=100;//The amount of excess air in percent
T=298;//The temperature of reactants in K
nc=1;//Number of moles of propane

//Calculations
hfch=-103.85;//Enthalpy of formation for propane in MJ/kmol fuel
HR=nc*hfch;//Total enthalpy on the reactants side in MJ/kmol fuel
hfc=-393.52;//Enthalpy of formation for carbondioxide in MJ/kmol fuel
hfh=-241.82;//Enthalpy of formation for water in MJ/kmol fuel
hfon=0;//Enthalpy of formation for both oxygen and nitrogen gas
x=HR-[(3*hfc)+(4*hfh)+(5*hfon)+(37.6*hfon)];//For adiabatic combustion enthalpy obtained for equating reactants and products in MJ/kmol fuel
hfn=x/37.6;//trail to get the change in enthalpy of nitrogen in MJ/kmol
T1=1500;//Assuming the products temperature for fist trail in K
hfc1=61.714;//The change in enthalpy for corbondioxide for trail temp in MJ/kmol fuel
hfh1=48.095;//The change in enthalpy for water for trail temp in MJ/kmol fuel
hfo1=40.61;//The change in enthalpy for oxygen for trail temp in MJ/kmol fuel
hfn1=38.405;//The change in enthalpy for nitrogen for trail temp in MJ/kmol fuel
HP1=(HR-x)+(3*hfc1)+(4*hfh1)+(5*hfo1)+(37.6*hfn1);//Total enthalpy of products for first trail in MJ/kmol fuel
T2=1600;//Assuming the products temperature for second trail in K
hfc2=67.58;//The change in enthalpy for corbondioxide for trail temp in MJ/kmol fuel
hfh2=52.844;//The change in enthalpy for water for trail temp in MJ/kmol fuel
hfo2=44.279;//The change in enthalpy for oxygen for trail temp in MJ/kmol fuel
hfn2=41.903;//The change in enthalpy for nitrogen for trail temp in MJ/kmol fuel
HP2=(HR-x)+(3*hfc2)+(4*hfh2)+(5*hfo2)+(37.6*hfn2);//Total enthalpy of products for second trail in MJ/kmol fuel
Te=[[(HR-HP1)/(HP2-HP1)]*(T2-T1)]+T1;//The eatimated adiabatic flame temperature in K

//Output
printf(' The adiabatic flame temperature for steady-flow process is  %3.1f K',Te)
