//pathname=get_absolute_file_path('6.17.sce')
//filename=pathname+filesep()+'6.17-data.sci'
//exec(filename)
//Mass of steam passed(in kg):
ms=40
//Mass of water passed(in kg):
mw=2.2
//Initial pressure of steam(in MPa):
p1=1.47
//Temperature after throttling(in °C):
T=120
//Pressure after throttling(in kPa):
p2=107.88
//Specific heat of superheated steam(in kJ/kg.K):
s=2.09
//From steam tables:
hf=840.513
hfg=1951.02
h1=2673.95
//Degree of superheat(in °C):
ds=T-101.8
//Enthalpy of superheated steam(in kJ/kg):
h2=h1+ds*s
//Dryness fraction after throttling:
x2=(h2-hf)/hfg
//Dryness fraction before throttling:
x1=(ms-mw)/ms
//Overall dryness fraction:
x=x1*x2
printf("\nRESULT\n")
printf("\nDryness fraction = %f",x)