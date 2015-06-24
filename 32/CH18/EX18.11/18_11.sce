//pathname=get_absolute_file_path('18.11.sce')
//filename=pathname+filesep()+'18.11-data.sci'
//exec(filename)
//From steam tables:
h1=322.28 //kJ/kg
h2=342.32 //kJ/kg
s2=1.1937 //kJ/kg.K
s1=s2
x1=0.961
h1=312.08 //kJ/kg
h3=144.11 //kJ/kg
h4=115.22 //kJ/kg
h5=h4
//Refrigeration effect(in kW):
m1=2
//Refrigeration effect(in kJ/kg):
r=h1-h5
//Refrigerant flow rate(in kg/s):
m=m1/r
//Compressor work(in kJ/kg):
Wc=h2-h1
//COP:
COP=r/Wc
printf("\n RESULT \n")
printf("\nCOP = %f",COP)
printf("\nMass flow rate = %f kg/s",m)