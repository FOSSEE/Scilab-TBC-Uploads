//pathname=get_absolute_file_path('8.20.sce')
//filename=pathname+filesep()+'8.20-data.sci'
//exec(filename)
//Power required(in kW):
P=14000
//Efficiency ratio of turbine:
r=0.75
//From steam tables:
h1=3137 //kJ/kg
s1=6.9563 //kJ/kg.K
s2=s1
x2=0.765
h2=2170.38 //kJ/kg
hf=467.11 //kJ/kg
//Enthalpy at state 2'(in kJ/kg):
h2a=h1-(h1-h2)*r
//Mass of steam required(in kg/s):
m=P/(h2a-hf)
//Power available to the generator(in kW):
P1=m*(h1-h2a)
printf("\n RESULT \n")
printf("\nPower available to the generator = %f kW",P1)