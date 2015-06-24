//pathname=get_absolute_file_path('11.15.sce')
//filename=pathname+filesep()+'11.15-data.sci'
//exec(filename)
//Atmospheric air temperature: 15C
//Steam generation: 40 bar, 400C
//Steam generated per kg of coal = 8 kg
//Feed water temperature at inlet to economiser = 27C
//Feed water temperature at exit of economiser = 137C
//Moisture in coal burnt = 1.5%
//Flue gas temperature entering air heater =300C
//Flue gas temperature leaving air heater and entering chimney = 150C
//Temperature of air entering boiler furnace = 120C
//Dry coal composition by mass = 84% C, 4% H2, 7% O2 and remainder ash
//Dry flue gas composition by volume = 12.5% CO2, 7.5% O2, 80% N2
//Datum temperature = 15C
//Calorific value of coal = 32600 kJ/kg
//For air and dry flue gas, cp =1.0032 kJ/kg K
//Partial pressure of vapour in flue gas = 0.075 bar
//Specific pressure of vapour = 2.0064 kJ/kg K
//Mass of dry flue gas per kg of coal:
md=0.84/0.0495
//H2O produced during the combustion(in kg):
mh=0.04*9
//Amount of air supplied for combustion of one kg of dry coal(in kg):
ma=16.97-(1-0.05-0.36)
//Moisture per kg of dry coal(in kg):
m=0.015/(1-0.015)
//Total moisture per kg of coal(in kg):
mt=mh+m
//Steam generated per kg of dry coal(in kg steam):
ms=8/(1-0.015)
//Boiler efficiency:
n=25178.01/32600*100
//Efficiency of heat exchange in air heater:
na=1725.4/2897.67*100
printf("\n RESULT \n")
printf("\nBoiler efficiency = %f percent",n)
printf("\nEfficiency of heat exchange in air heater = %f percent",na)
