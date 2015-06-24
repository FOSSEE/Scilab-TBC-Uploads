//pathname=get_absolute_file_path('11.14.sce')
//filename=pathname+filesep()+'11.14-data.sci'
//exec(filename)
//Temperature at which feed water enters and leaves the economiser(in C):
T1=20
T2=125
//Rate at which feed water leaves the economiser(in kg/s):
r=3
//Temperature of flue gases at inlet and outlet of economiser(in C):
T3=425
T4=300
//Rate at which coal is supplied(in kg/min):
r1=18
//% of C in coal:
nc=0.80
//Specific heat of flue gases(in kJ/kg.K):
Cpg=1.05
//Atmospheric temperature(in C):
Ta=15
//From table:
//Mass of dry flue gases at inlet and exit of economiser(in kg):
m1=23.65
m2=24.78
//Air leakage in economiser per kg of coal:
A=m2-m1
//Heat entering economiser with flue gases and leakage(in kJ):
Q1=m1*Cpg*T3+A*Cpg*Ta
//Heat entering economiser with flue gases and leakage(in kJ):
Q2=m2*Cpg*T4
//Heat lost in economiser per kg of coal(in kJ):
Q=Q1-Q2
//Heat picked up by feed water in economiser per kg of coal(in kJ):
Q3=(r*60/r1)*4.18*(T2-T1)
printf("\n RESULT \n")
printf("\nHeat released by the flue gases = %f kJ per kg of coal",Q)
printf("\nAir leakage = %f kg per kg of coal",A)
printf("\nHeat gained by feed water = %d kJ per kg of coal",Q3)