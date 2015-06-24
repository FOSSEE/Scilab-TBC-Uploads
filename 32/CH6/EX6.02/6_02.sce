//pathname=get_absolute_file_path('6.02.sce')
//filename=pathname+filesep()+'6.02-data.sci'
//exec(filename)
//Pressure at which steam is entering(in MPa):
p1=10
//Pressure at which steam is coming out(in MPa):
p2=0.05
//Temperature of the steam(in°C):
T=100
//From steam tables:
//Enthalpy of superheated steam at 0.05 MPa and 100°C(in kJ/kg):
h2=2682.5
hf10=1407.56
hfg10=1317.1
//Due to throttling:
h1=h2
//Dryness fraction:
x1=(h1-hf10)/hfg10
printf("\nRESULT\n")
printf("\nDryness fraction = %f",x1)