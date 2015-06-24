//ques8
//Malfunction of a Refrigerator Light Switch
clear
clc
COPr=1.3;//coefficient of performance of refrigerator
Qref=40;//heat load of refrigerator in  W
Wref=Qref/COPr;//power consumed in  W
Wlight=Qref;//power consumed by light in W
Wtotal=Wlight+Wref;//total additional power consumed in W
nh=20*30*365/3600;//normal operating hour per yr (h/yr)
//Then the additional hours the light remains on as a result of the malfunction becomes
annualh=8760;// total number of annual hour in a year h/yr
at=annualh-nh;//additional hr in h/yr
aP=Wtotal*at/1000;//additional power consumption in kWh/yr
printf('Additional power consumption = %.0f kWh/yr \n',aP);
uc=0.08;//unit cost 0.08 $/kWh
APC=aP*uc;//additional power cost in $/yr
printf(' Additional power cost = $ %.1f/yr ',APC);