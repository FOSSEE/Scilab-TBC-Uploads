//pathname=get_absolute_file_path('5.15.sce')
//filename=pathname+filesep()+'5.15-data.sci'
//exec(filename)
//Pressure at point 1(in MPa):
p1=0.5
//Temperature at point 1(in K):
T1=400
//Pressure at point 2(in MPa):
p2=0.3
//Temperature at point 2(in K):
T2=350
//Gas constant(in kJ/kg.K):
R=0.287
//Value of Cp(in kJ/kg.K):
Cp=1.004
//Entropy change(in kJ/kg.K):
ds=Cp*log(T1/T2)-R*log(p1/p2)
printf("\nRESULT\n")
printf("\nChange in entropy = %f kJ/kg.K",ds)
//As the calculated change is positive, s2>s1
printf("\nHence flow occurs from 1 to 2 i.e. from 0.5 MPa, 400 K to 0.3 MPa & 350 K")