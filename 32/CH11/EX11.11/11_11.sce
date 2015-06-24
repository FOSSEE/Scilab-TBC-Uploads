//pathname=get_absolute_file_path('11.11.sce')
//filename=pathname+filesep()+'11.11-data.sci'
//exec(filename)
//Time of trial(in hrs):
t=24
//Pressure at which steam is generated(in bar):
p=16
//Coal consumed(in kg):
c=10000
//Rate of steam generation(in kg/hr):
r=2500
//Feed water temperature(in C):
Tf=27
//Total heating surface area(in m^2):
hsa=3000
//Total grate area(in m^2):
ga=4
//Calorific value of coal(in kJ/kg):
C=28000
//From steam tables:
hg=2794 //kJ/kg
//Latent heat at 100 C:
L=2257
//Coal  burnt per hour(in kg/hr):
m=c/t
//Coal burnt per m^2 of grate per hour:
mg=m/ga
//Rate of steam generated per kg of coal(in kg steam/kg coal):
r1=r/m
//Heat added to steam per kg of coal(in kJ):
Q=r1*(hg-4.18*Tf)
//Equivalent evaporation from and at 100 C per kg of coal(in kg):
Ee=Q/L
//Equivalent evaporation from and at 100 C per m^2 of total surface per hour(in kg):
Eepm=Ee*m/hsa
//Boiler efficiency:
n=Ee*L/C*100
printf("\n RESULT \n")
printf("\nMass of coal burnt per m^2 of grate per hour = %f kg",mg)
printf("\nEquivalent evaporation from and at 100 C per kg of coal = %f kg",Ee)
printf("\nEquivalent evaporation from and at 100 C per m^2 of total surface per hour = %f",Eepm)
printf("\nBoiler efficiency = %f percent",n)