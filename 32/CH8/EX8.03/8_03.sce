//pathname=get_absolute_file_path('8.03.sce')
//filename=pathname+filesep()+'8.03-data.sci'
//exec(filename)
//Pressure of steam entering(in bar):
p1=40
//Temperature(in K):
T1=350+273
//Pressure of steam leaving(in bar):
p4=0.05
//From steam tables:
h2=3092.5 //kJ/kg
s2=6.5821 //kJ/kg.K
h4=137.82 //kJ/kg
s4=0.4764 //kJ/kg.K
v4=0.001005 //m^3/kg
sf=0.4764 //kJ/kg.K
sfg=7.9187 //kJ/kg.K
hf=137.82 //kJ/kg
hfg=2423.7 //kJ/kg
//Entropy at state 3:
s3=s2
//Dryness fraction at state 3:
x3=(s3-sf)/sfg
//Enthalpy at state 3(in kJ/kg):
h3=hf+x3*hfg
//Enthalpy at state 1(in kJ/kg):
h1=h4+v4*(p1-p4)
//Pump work(in kJ/kg):
Wp=h1-h4
//Net work(in kJ/kg):
Wnet=h2-h3-Wp
//Heat added(in kJ/kg):
Q=h2-h1
//Cycle efficiency(in kJ/kg):
n=Wnet/Q*100
printf("\n RESULT \n")
printf("\nNet work per kg of steam = %f kJ/kg",Wnet)
printf("\nCycle efficiency = %f percent",n)
printf("\nPump work per kg of steam = %f kJ/kg",Wp)