//pathname=get_absolute_file_path('7.02.sce')
//filename=pathname+filesep()+'7.02-data.sci'
//exec(filename)
//For tank A:
//Pressure of air(in bar):
pa=1
//Mass of air(in kg):
m=1
//Value of Cv(in kJ/kg.K):
Cv=0.717
//Temperature(in K):
T=50+273
//Gas costant(in kJ/kg.K):
R=0.287
//Atmospheric pressure(in bar):
p0=1
//Atmosphere temperature(in K):
T0=15+273
//Value of Cp(in kJ/kg.K):
Cp=1.004
//For tank B
//Pressure(in bar):
pb=3
//Availability of air in tank A(in kJ):
AA=m*(Cv*(T-T0)+R*(p0/pa*T-T0)-T0*Cp*log(T/T0)+T0*R*log(pa/p0))
//Availability of air in tank B(in kJ):
AB=m*(Cv*(T-T0)+R*(p0/pb*T-T0)-T0*Cp*log(T/T0)+T0*R*log(pb/p0))
printf("\nRESULT")
printf("\nAvailabiltiy of air in tank A = %f kJ",AA)
printf("\nAvailability of air in tank B = %f kJ",AB)