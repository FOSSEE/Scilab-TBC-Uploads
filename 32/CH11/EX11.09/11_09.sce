//pathname=get_absolute_file_path('11.09.sce')
//filename=pathname+filesep()+'11.09-data.sci'
//exec(filename)
//Feed water supply temperature(in K):
T=27+273
//Mean steam generation pressure(in bar):
P=10
//Dryness fravtion of steam generated:
x=0.95
//Feed water supplied(in kg/hr):
Q=2500
//Coal burnt(in kg/hr):
Q1=275
//Difference in mass of water after trial:
d=300
//From steam tables:
hf=762.81 //kJ/kg
hg=2778.1 //kJ/kg
hfg=2015.29 //kJ/kg
//Enthalpy of steam generated(in kJ/kg):
h=hf+x*hfg
//Mass of water evaporator per hour(in kg/hr):
mw=Q+d
//Actual evaporation(in per kg of coal):
Ae=mw/Q1
//Equivalent evaporation(in kg per kg of coal):
Ee=Ae*h/2257
printf("\n RESULT \n")
printf("\nActual evaporation = %f kg per kg of coal",Ae)
printf("\nEquivalent evaporation = %f kg per kg of coal",Ee)