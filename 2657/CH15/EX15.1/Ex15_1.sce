//Comparison of cooling water required
clc,clear
//Given:
bp=100 //Brake power in kW
deltaT=30 //Temperature raised of water in degreeC
p_p=30,p_d=26 //Percentage of energy going to coolent in petrol and diesel
eta_p=26,eta_d=31 //Efficiency of petrol and diesel engine in percent
s=4.1868 //Specific heat capacity of water in J/kgK
//Solution:
//Petrol engine
CW_p=bp*(p_p/100)/((eta_p/100)*deltaT*s) //Amount of cooling water required in petrol engine in kg/s
//Diesel engine
CW_d=bp*(p_d/100)/((eta_d/100)*deltaT*s) //Amount of cooling water required in diesel engine in kg/s
//Results:
printf("\n Amount of cooling water required in petrol engine = %d kg/hr",CW_p*3600)
printf("\n Amount of cooling water required in diesel engine = %.1f kg/hr\n\n",CW_d*3600)
