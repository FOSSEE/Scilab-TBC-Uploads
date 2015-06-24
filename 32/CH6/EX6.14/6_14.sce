//pathname=get_absolute_file_path('6.14.sce')
//filename=pathname+filesep()+'6.14-data.sci'
//exec(filename)
//Mass of steam(in kg):
m1=100
//Initial pressure(in kPa):
p1=100
//Final pressure(in kPa):
p2=1000
//Dryness fraction:
x1=0.5
//Pressure of dry saturated steam(in kPa):
p3=2000
//From steam tables:
hf100kPa = 417.46 //kJ/kg
uf100kPa = 417.36 //kJ/kg
vf100kPa = 0.001043 //m^3/kg
hfg100kPa = 2258 //kJ/kg
ufg100kPa = 2088.7 //kJ/kg
vg100kPa = 1.6940 //m^3/kg
vg2000kPa = 0.09963 //m^3/kg
ug2000kPa = 2600.3 //kJ/kg
hg2000kPa = 2799.5 //kJ/kg
hf1000kPa = 762.81 //kJ/kg,
hfg1000kPa = 2015.3 //kJ/kg 
vf1000kPa = 0.001127 //m3/kg
vg1000kPa = 0.19444 //m3/kg
//Initial specific volume(in m^3/kg):
v1=vf100kPa+x1*(vg100kPa-vf100kPa)
//Enthalpy at 1(in kJ/kg):
h1=hf100kPa+x1*hfg100kPa
//Volume of vessel(in m^3):
V=m1*x1*v1
//Internal energy in the beginning(in kJ):
U1=m*(uf100kPa+x1*ufg100kPa)
//Final specific volume(in m^3/kg):
v2=vg2000kPa*v1/(vg2000kPa+v1)
//Final dryness fraction:
x2=(v2-vf1000kPa)/(vg1000kPa-vf1000kPa)
//Final enthalpy(in kJ/kg):
h2=hf1000kPa+x2*hfg1000kPa
//Mass of dry steam at 2000kPa(in kg):
m=m1*(h1-h2)/(h2-hg2000kPa)
printf("\nRESULT\n")
printf("\nMass of dry steam at 2000 kPa to be added = %f kg",m)
printf("\nQuality of final mixture = %f",x2)