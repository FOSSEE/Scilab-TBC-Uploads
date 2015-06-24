//pathname=get_absolute_file_path('6.18.sce')
//filename=pathname+filesep()+'6.18-data.sci'
//exec(filename)
//Initial volume in part A(in m^3):
Va=0.4
//Pressure(in bar):
pa=10
//Initial volume in part B(in m^3):
V=0.4
//Pressure in part B(in bar):
p1=10
//Final pressure in part B(in bar):
p2=15
//From steam tables:
hf=762.83
hfg=2015.3
h2=2792.2
//Heat added(in kJ):
Q=V*(p2-p1)*10^2
//Dryness fraction:
x1=(h2-Q-hf)/hfg
printf("\nRESULT\n")
printf("\nHeat added = %d kJ",Q)
printf("\nInitial quality = %f",x1)