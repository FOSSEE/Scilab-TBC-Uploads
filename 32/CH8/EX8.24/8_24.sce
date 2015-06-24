//pathname=get_absolute_file_path('8.24.sce')
//filename=pathname+filesep()+'8.24-data.sci'
//exec(filename)
//Turbine efficiency:
nt=0.80
//Mechanical efficiency:
nm=0.90
//Power delivered by turbine(in kW):
p=720
//From steam tables:
h1=3045.8 //kJ/kg
s1=7.0317 //kJ/kg.K
s4=s1
x4=0.841
h4=2192.24 //kJ/kg.K
h2=2706.7 //kJ/kg
s2=7.1271 //kJ/kg.K
s3=s2
x3=0.854
h3=2223.51 //kJ/kg
//Enthalpy at state 4'(in kJ/kg):
h4a=h1-(h1-h4)*nt
//Enthalpy at state 3'(in kJ/kg):
h3a=h2-(h2-h3)*nt
//Power developed in the turbine(in kW):
P=p/nm
//HP steam consumption(in kg/kW.h):
m1=3600/(h1-h4a)
//LP steam consumption(in kg/kW.h):
m2=3600/(h2-h3a)
printf("\n RESULT \n")
printf("\nHP steam consumption = %f kg/kW.h",m1)
printf("\nLP steam consumption = %f kg/kW.h",m2)