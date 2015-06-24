//pathname=get_absolute_file_path('1.18.sce')
//filename=pathname+filesep()+'1.18-data.sci'
//exec(filename)
//Mass of gas(in kg):
m=5
//Volume of the container(in m^3):
v=2
//Temperature in the container(in K):
t=300
//Universal gas constant(in kJ/kg-K):
R=8.314
//Vander-Waals Constant(from table):
a=3628.5*10^2
b=3.14*10^-2
//Molecular weight of CO2:
mw=44.01
//Considering it as a perfect gas
//Gas constant for CO2(in j/kg-K):
Rp=R*10^3/mw
//Pressure of the gas(in N/m^2):
pp=m*Rp*t/v
//Considering it as a real gas:
//Molar specific volume(in m^3/kg.mol):
v1=v*mw/m
//Vanderwall eqn:
pr=R*10^3*t/(v1-b)-a/(v1^2)
printf("\n\n RESULT \n\n")
printf("\n\n Pressure if considered perfect gas = %f N/m^2",pp)
printf("\n\n Pressure if considered real gas = %f N/m^2",pr)