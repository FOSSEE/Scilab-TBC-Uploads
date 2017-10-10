
//To Find Thermal Coefficients a and b

//Example 33.3

clear;

clc;

acupb=2.76*10^-6;//Coefficient(a) for Copper-Lead Thermocouple

afepb=16.6*10^-6;//Coefficient(a) for Iron-Lead Thermocouple

acufe=acupb-afepb;//Coefficient(a) for Copper-Iron Thermocouple

bcupb=0.012*10^-6;//Coefficient(b) for Copper-Lead Thermocouple

bfepb=-0.030*10^-6;//Coefficient(b) for Iron-Lead Thermocouple

bcufe=bcupb-bfepb;//Coefficient(b) for Copper-Iron Thermocouple

printf("Thermal Coefficient (a) for Copper-Iron Thermocouple = %f uV/deg C",acufe*10^6);

printf("\nThermal Coefficient (b) for Copper-Iron Thermocouple =%f uV/deg C^2",bcufe*10^6);
