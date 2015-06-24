//pathname=get_absolute_file_path('18.14.sce')
//filename=pathname+filesep()+'18.14-data.sci'
//exec(filename)
//Relavite humidity;
r=0.80
//From pyschometric chart:
w1=0.0086 //kg/kg of air 
w2=0.01 //kg/kg of air
h1=37 //kJ/kg
h2=50 //kJ/kg
v2=0.854 //m^3/kg
//Mass of water added between states 1 and 2:
m=w2-w1
//Mass flow rate:
ma=r/v2
//Total mass of water added(in kg/s):
m1=m*ma
//Heat transferred(in kJ/s):
q=ma*(h2-h1)
printf("\n RESULT \n")
printf("\nMass of water added = %f kg/s",m1)
printf("\nHeat transferred = %f kJ/s",q)