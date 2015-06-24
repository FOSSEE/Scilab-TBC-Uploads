//pathname=get_absolute_file_path('5.20.sce')
//filename=pathname+filesep()+'5.20-data.sci'
//exec(filename)
//Mass in tank A(in kg):
ma=0.6
//Mass in tank B(in kg):
mb=1
//Temperature in tank A(in K):
Ta=90+273
//Temperature in tank B(in K):
Tb=45+273
//Pressure in tank A(in bar):
pa=1
//Pressure in tank B(in bar):
pb=2
//Gas constant(in kJ/kg.K):
R=0.287
//Value of Cp(in kJ/kg.K):
Cp=1.005
//Final temperature(in K):
Tf=(ma*Ta+mb*Tb)/(ma+mb)
//Volume of tank A(in m^3):
va=ma*R*Ta/pa
//Volume of tank B(in m^3):
vb=mb*R*Tb/pb
//Final pressure(in kPa):
pf=(ma+mb)*R*Tf/(va+vb)
//Entropy change(in kJ/K):
dS=ma*(Cp*log(Tf/Ta)-R*log(pf/pa))+mb*(Cp*log(Tf/Tb)-R*log(pf/pb))
printf("\nRESULT\n")
printf("\nEntropy produced = %f kJ/K",dS)