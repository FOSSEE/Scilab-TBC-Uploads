//pathname=get_absolute_file_path('6.21.sce')
//filename=pathname+filesep()+'6.21-data.sci'
//exec(filename)
//Steam entering:
//Pressure(in MPa):
p1=2.5
//Temperature(in °C):
T1=350
//Steam rejected:
//Pressure(in kPa):
p2=20
//Dryness fraction:
x2=0.92
//Pressure of one quater of intial steam(in kPa):
p3=30
//Temperature(in °K):
T0=30+273
m1=1
m2=0.25
m3=0.75
//Heat lost during expansion(in kJ):
Q=-10
//From steam tables:
h1=3126.3 //kJ/kg
s1=6.8403 //kJ/kg.K
h2=2878.6 //kJ/kg
s2=8.5309 //kJ/kg.K
h3 = 2421.04 //kJ/kg
s3 = 7.3425 //kJ/kg.K
hf = 251.40 //kJ/kg
hg = 2609.7 //kJ/kg
sf = 0.8320 //kJ/kg.K
sfg = 7.0766 //kJ/kg.K
h0=125.79 
s0=0.4369
//Availability of steam entering turbine(in kJ/kg):
A1=(h1-h0)-T0*(s1-s0)
//Availability of steam leaving turbine at state 2(in kJ/kg):
A2=(h2-h0)-T0*(s2-s0)
//Availability of steam leaving turbine at state 3(in kJ/kg):
A3=(h3-h0)-T0*(s3-s0)
//Maximum work per kg of steam entering turbine(in kJ/kg):
Wmax=m1*A1-m2*A2-m3*A3
//Irreversibilty(in kJ/s):
I=T0*(m2*s2+m3*s3-m1*s1)-Q
printf("\nRESULT\n")
printf("\nMaximum work = %f kJ/kg",Wmax)
printf("\nIrreversibility = %f kJ/s",I)