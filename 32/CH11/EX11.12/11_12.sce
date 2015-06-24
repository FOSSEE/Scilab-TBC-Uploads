//pathname=get_absolute_file_path('11.12.sce')
//filename=pathname+filesep()+'11.12-data.sci'
//exec(filename)
//Pressure at which steam is generated(in bar):
p=30
//Temperature of steam(in C):
Ts=300
//Rate at which feed water enters(in kg/s):
r=11
//Temperature at which feed water enters the economiser(in C):
T1=100
//Mass of fuel used(in kg):
m=5000
//Calorific value of fuel(in kJ/kg.K):
C=35000
//Temperature of feed water(in C):
T=27
//From steam tables:
hg=2993.5
//Latent heat at 100 C:
L=2257
//Mass of steam genrated per kg of fuel(in kg/kg fuel):
ms=r*3600/m
//Heat added per kg of fuel(in kJ):
Q=hg-4.18*T
//Equivalent evaporation from and at 100 C per kg of coal(in kg):
Ee=ms*Q/L
//Boiler efficiency:
n=Ee*L/C*100
//Heat utilised in economiser per kg of fuel(in kJ):
Q1=ms*4.18*(T1-T)
//Percentage of energy utilised in economiser:
P=Q1/C*100
printf("\n RESULT \n")
printf("\nEquivalent evaporation per kg of fuel = %f kg",Ee)
printf("\nBoiler efficiency = %f percent",n)
printf("\nPercentage of energy utilised in economiser = %f percent",P)