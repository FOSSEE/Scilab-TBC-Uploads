//pathname=get_absolute_file_path('11.23.sce')
//filename=pathname+filesep()+'11.23-data.sci'
//exec(filename)
//Temperature at which feed water enters and leaves economiser(in C):
T1=30
T2=110
//Pressure at which steam is generated(in bar):
p=20
//Dryness fraction:
x=0.98
//Temperature to which it is superheated(in C):
T=300
//Calorific value of coal(in kJ/kg.K):
C=30500
//Steam generation rate(in kg/kg of coal):
r=10
//Specific heat of feed water(in kJ/kg.K):
Cpfw=4.18
//Specific heat of superheated steam(in kJ/kg.K):
Cps=2.093
//From steam tables:
h4=3023.5 //kJ/kg
hf=908.79 //kJ/kg
hfg=1890.7 //kJ/kg
h1=125.79 //kJ/kg
//Enthalpy at state 3(in kJ/kg):
h3=hf+x*hfg
//Total heat supplied(in kJ/kg):
Q=h4-h1
//Heat consumed in the economiser(in kJ/kg of coal):
Q1=Cpfw*(T2-T1)*8
//Heat consumed in the boiler(in kJ/kg coal):
Q2=(h3-Cpfw*T2)*8
//Heat consumed in the superheater(in kJ/kg steam):
Q3=(h4-h3)*8
//Fraction of energy consumed in economiser:
r1=Q1/C*100
//Fraction of energy consumed in boiler:
r2=Q2/C*100
//Fraction of energy consumed in superheater:
r3=Q3/C*100
printf("\nRESULTS\n")
printf("\nFraction of energy consumed in economiser = %f percent",r1)
printf("\nFraction of energy consumed in boiler = %f percent",r2)
printf("\nFraction of energy consumed in superheater = %f percent",r3)