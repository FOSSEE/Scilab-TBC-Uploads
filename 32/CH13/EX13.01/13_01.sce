//pathname=get_absolute_file_path('13.01.sce')
//filename=pathname+filesep()+'13.01-data.sci'
//exec(filename)
//Pressure of dry steam(in bar):
p1=10
//Velocity of steam entering(in m/s):
C1=100
//Velocity of steam leaving the nozzle(in m/s):
C2=300
//Pressure of steam at exit(in bar):
p2=5
//Mass flow rate(in kg/s):
m=16
//Heat loss to surroundings(in kJ/kg):
q=10
//From steam tables:
h1=2778.1 //kJ/kg
hf=640.23 //kJ/kg
hfg=2108.5 //kJ/kg
//Heat drop in the nozzle(in kJ/kg):
dh=(q*10^3+(C1^2-C2^2)/2)/1000
//Total heat drop(in kJ/s):
dQ=-dh*m
//Enthalpy at state 2(in kJ/kg):
h2=h1+dh
//Dryness fraction at state 2:
x2=(h2-hf)/hfg
printf("\nRESULT\n")
printf("\nHeat drop in the nozzle = %f kJ/kg",-dh)
printf("\nTotal heat drop = %f kJ/s",dQ)
printf("\nDryness fraction at exit = %f",x2)