clear;
clc;
printf("\n Example 14.6");
//(a) Diesel engine
printf("\n (a) Diesel engine");

printf("\n For 1 kg evaporation, ammonia circulated = 2.28 kg");
printf("\n Work done in compressing the ammonia = %d MJ/kg",150*2.28);
printf("\n For an output of 1 MJ, the engine consumes 0.4 kg fuel.");
printf("\n fuel consumption = %.3f kg/kg water evaporated",0.4*0.342);
printf("\n cost = %.5f euro/kg water evaporated ",0.02*0.137);

printf("\n (b) Turbine");

printf("\n The work required is 0.342 MJ/kg evaporation");
//Therefore with an efficiency of 70 per cent:
printf("\n energy required from steam = %.3f MJ/kg ",0.342*100/70);
printf("\n Enthalpy of steam saturated at 700 kN/m2 = 2764 kJ/kg.");
printf("\n Enthalpy of steam saturated at 101.3 kN/m2 = 2676 kJ/kg");
printf("\n thus : energy from steam = %d kg/kg",2764-2676);
printf("\n steam required = %.2f kg/kg evaporation ",0.489/0.088);
printf("\n Cost = %.4f euro/kg water evaporated",0.01*5.56/10);
printf("\n Hence the Diesel engine would be used for driving the compressor");





