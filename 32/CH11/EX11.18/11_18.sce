//pathname=get_absolute_file_path('11.18.sce')
//filename=pathname+filesep()+'11.18-data.sci'
//exec(filename)
//Rate at which steam is generated(in kg/hr):
r=5000
//Pressure of steam(in bar):
p=20
//Dryness fraction:
x=0.98
//Temperature of feed water(in C):
T=60
//Rate at which coal is supplied(in kg/hr):
r1=600
//Rate at which air is supplied(in kg per kg coal):
r2=16
//Cslorific value of coal(in kJ/kg):
C=30000
//Temperature of boiler room(in C):
Tr=20
//Fraction of heat losr with flue gases:
nl=0.86
//Specific heat of flue gases(in kJ/kg.K):
Cpg=1.005
//From steam tables:
hf=908.79 //kJ/kg
hfg=1890.7 //kJ/kg
//Mass of steam genrated per kg of coal:
ms=r/r1
//Enthalpy of final steam produced(in kJ/kg):
hfi=hf+x*hfg
//Enthalpy of feed water(in kJ/kg):
hfw=251.13
//Heat used for steam generation(in kJ per kg of coal):
Q=ms*(hfi-hfw)
//Heat lost per kg of coal:
Ql=C-Q
//Heat lost with flue gases(in kJ per kg of coal):
Qlf=nl*Ql
//Temperature of flue gases(in C):
Tgas=Tr+Qlf/((r2+1)*Cpg)
printf("\n RESULT \n")
printf("\nTemperature of flue gases = %f C",Tgas)