clc
clear
//Input data
m=400;//Mass of fruits supplied to a cold storage in kg
T1=293;//Temperature at which fruits are stored in K
T2=268;//Temperature of cold storage in K
t=8;//The time untill which fruits are cooled in hours
hfg=105;//Latent heat of freezing in kJ/kg
Cf=1.25;//Specific heat of fruit
TR=210;//One tonne refrigeration in kJ/min

//Calculations
Q1=m*Cf*(T1-T2);//Sensible heat in kJ
Q2=m*hfg;//Latent heat of freezing in kJ
Q=Q1+Q2;//Heat removed from fruits in 8 hrs
Th=(Q1+Q2)/(t*60);//Total heat removed in one minute in kJ/kg
Rc=Th/TR;//Refrigerating capacity of the plant in TR

//Output
printf('The refrigeration capacity of the plant is %3.3f TR',Rc)
