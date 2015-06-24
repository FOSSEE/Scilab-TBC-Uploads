//pathname=get_absolute_file_path('18.09.sce')
//filename=pathname+filesep()+'18.09-data.sci'
//exec(filename)
//Operating temperatures(in K):
T1=-15+273
T2=25+273
h2=1317.95 //kJ/kg
s2=4.4809 //kJ/kg.K
h3=99.94 //kJ/kg
s3=0.3386 //kJ/kg.K
h9=-54.51 //kJ/kg
s9=-0.2132 //kJ/kg.K
h4=h3
s8=s3
s4=0.3855 //kJ/kg.K
s1=s2
//Refrigeration effect(in kJ/kg):
C=T1*(s1-s4)
//Work done(in kJ/kg):
W=h3-h9-T1*(s3-s9)+(T2-T1)*(s1-s8)
//COP:
COP=C/W
printf("\n RESULT \n")
printf("\nCOP = %f",COP)