//pathname=get_absolute_file_path('11.17.sce')
//filename=pathname+filesep()+'11.17-data.sci'
//exec(filename)
//Pressure at which steam is generated(in bar):
p=20
//Temperature at which steam is generated(in C):
Ts=300
//Temperature of feed water supplied to the boiler(in C):
T1=50
//Calorific value of fuel(in kJ/kg):
C=30000
//Rate at which coal is used(in kg/hr):
r=600
//Rate at which steam is generated(in kg/hr):
r1=5000
//Temperature of the boiler unit(in C):
T=100
//Latent heat(in kJ/kg.K):
L=2257 
//Steam generation per unit coal burnt per hour:
ms=r1/r
//Final enthalpy of the steam(in kJ/kg):
hfi=3023.5 
//Enthalpy of feed water(in kJ/kg):
hfw=209.33
//Overall efficiency of boiler:
no=ms*(hfi-hfw)/C*100
//Equivalent evaporation of boiler unit(in kg steam per kg of coal):
Ee=ms*(hfi-hfw)/L
//Equivalent evaporation of boiler unit at 100 C(in kg/hr):
Eea=Ee*r
//After fitting economiser the enthalp of feed water(in kJ/kg):
hfw1=313.93
//Modified overall efficiency of boiler unit:
nom=no+5
//Coal consumption(in kg/hr):
mc=(hfi-hfw1)*r1*100/(C*nom)
//Saving of coal(in kg/hr):
s=r-mc
printf("\n RESULT \n")
printf("\nSaving of coal = %f kg/hr",s)