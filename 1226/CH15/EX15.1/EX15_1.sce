clc;funcprot(0);//EXAMPLE 15.1
// Initialisation of Variables
BP=90;.................//Brake Power in kW
deltw=27;.................//Raise in temperature of water 
etaP=0.25;...................//Efficiency of petrol engine
etaD=0.3;....................//Efficiency od diesel engine
Pec=32;......................//Percentage of energy going to coolant in petrol engine
Dec=28;......................//Percentage of energy going to coolant in diesel engine
cp=4.187;..........//specific heat of water at constant pressure
//Calculations
hsP = BP/etaP;............//Heat supplied in kW or kJ/s
ecP=hsP*(Pec/100);.............//Energy going to cooling water in kg/s
mwP=ecP/(cp*deltw);.............//Mass of cooling water required
hsD = BP/etaD;............//Heat supplied in kW or kJ/s
ecD=hsD*(Dec/100);.............//Energy going to cooling water in kg/s
mwD=ecD/(cp*deltw);.............//Mass of cooling water required
disp(mwP*3600,"The mass of cooling water required (kg/h)for petrol engine:")
disp(mwD*3600,"The mass of cooling water required (kg/h)for diesel engine:")
