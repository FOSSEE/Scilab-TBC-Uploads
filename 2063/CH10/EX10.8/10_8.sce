clc
clear
//Input data
T1=263;//Minimum temperature at which Vapour compression refrigerator using methyl chloride operates in K
T2=318;//Maximum temperature at which Vapour compression refrigerator using methyl chloride operates in K
sf1=0.183;//Entropy of the liquid in kJ/kg K
hfg1=460.7;//Enthalpy of the liquid in kJ/kg
sf2=0.485;//Entropy of the liquid in kJ/kg K
hfg2=483.6;//Enthalpy of the liquid in kJ/kg
x2=0.95;//Dryness fraction at point 2
hf3=133.0;//Enthalpy of the liquid in kJ/kg
W=3600;//Work to be spent corresponding to 1kW/hour
Cw=4.187;//Specific heat of water in kJ/kg degrees celcius
mi=1;//Mass of ice produced at 0 degrees celcius
Li=335;//Latent heat of ice in kJ/kg
hf1=45.4;//Enthalpy of liquid at 263 K in kJ/kg
hf2=133;//Enthalpy of liquid at 318 K in kJ/kg

//Calculations
s2=sf2+((x2*(hfg2-hf2))/T2);//Enthalpy at point 2 in kJ/kg
x1=(s2-sf1)/((hfg1-hf1)/T1);//Dryness fraction at point 1
h1=hf1+(x1*hfg1);//Enthalpy at point 1 in kJ/kg
h2=hf2+(x2*hfg2);//Enthalpy at point 2 in kJ/kg
COP=(h1-hf3)/(h2-h1);//Theoretical COP
COPa=0.6*COP;//Actual COP which is 60 percent of theoretical COP
H=W*COPa;//Heat extracted or refrigeration effect produced per kW hour in kJ
Hw=(mi*Cw*10)+Li;//Heat extracted from water at 10 degrees celcius for the formation of 1 kg of ice at 0 degrees celcius
I=H/Hw;//Amount of ice produced in kg/kW hr

//Output
printf('The amount of ice produced is %3.2f kg/kW hr',I)
