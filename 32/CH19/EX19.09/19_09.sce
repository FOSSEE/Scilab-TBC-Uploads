//pathname=get_absolute_file_path('19.09.sce')
//filename=pathname+filesep()+'19.09-data.sci'
//exec(filename)
//Gas constant(in kJ/kg.K):
R=0.287
//Density ratio:
r1=0.4
//Specific heat(in kJ/kg.K):
Cp=1.005
//Drag coefficient:
d=0.018
//Jet velocity(in m/s):
Ce=550
//Wing area(in m^2):
A=20
//Speed of aeroplane(in m/s):
Ca=900*1000/3600
//Density of STP(in kg/m^3):
d1=1.01325*10^2/(R*288)
//Density of air at altitude(in kg/m^3):
d2=r1*d1
//Thrust on aeroplane:
T=d*A*d2*Ca^2/2
//Mass flow rate(in kg/s):
ma=T/(Ce-Ca)
//Specific thrust(in N/kg of air):
St=T/ma
printf("\n RESULT \n")
printf("\nSpecific thrust = %d N/kg of air",St)