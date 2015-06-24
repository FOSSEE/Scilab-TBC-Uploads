//pathname=get_absolute_file_path('18.03.sce')
//filename=pathname+filesep()+'18.03-data.sci'
//exec(filename)
//Work done(in hp):
W=3
//Temperature to be maintained(in K):
T1=-27+273
//COP:
COP=1*3.5/(W*0.7457)
printf("\n RESULT \n")
printf("\nCOP = %f",COP)
//Temperature of surroundings(in K):
T2=T1+T1/COP
printf("\nTemperature of surroundings = %f K",T2)