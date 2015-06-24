//pathname=get_absolute_file_path('8.10.sce')
//filename=pathname+filesep()+'8.10-data.sci'
//exec(filename)
//Pressure of the steam entering(in bar):
p1=70
//Temperature of the steam entering the HP turbine(in C):
T1=450
//Pressure at which steam is extracted(in bar):
p3=30
//Temperature at which it is reheated(in C):
T4=400
//Pressure of steam after expanding(in bar):
p6=0.075
//Temperature at which steam is bled(in C):
T=140
//Efficiency of HP turbine:
nh=0.80
//Efficiency of LP turbine:
nl=0.85
//From steam tables:
h2=3287.1 //kJ/kg
s2=6.6327 //kJ/kg.K
h3=3049.48 //kJ/kg
h4=3230.9 //kJ/kg
s4=6.9212 //kJ/kg.K
s6=s4
h6=2158.55 //kJ/kg
s5=s4
p5=3.61 //bar
h5=2712.38 //kJ/kg
h9=1008.42 //kJ/kg
v7=0.001008 //m^3/kg
h7=168.79 //kJ/kg
h8=169.15 //kJ/kg
v9=0.00108 //m^3/kg
//Actual enthalpy at state 3(in kJ/kg):
h3a=h2-nh*(h2-h3)
//Actual enthaly at state 6(in kJ/kg):
h6a=h4-nl*(h4-h6)
//Actual enthaly at state 5(in kJ/kg):
h5a=h4-nl*(h4-h5)
//Enthalpy at state 8(in kJ/kg):
h8=h7+v7*(p5-p6)*10^2
//Mass of bled steam per kg of steam generated(in kg/kg steam generated):
m=(h9-h8)/(h5a-h8)
//Enthalpy at state 1(in kJ/kg):
h1=h9+v9*(p1-p5)*10^2
//Net work per kg of steam generated(in kJ/kg):
Wnet=(h2-h3a)+(h4-h5a)+(1-m)*(h5a-h6a)-((1-m)*(h8-h7)+(h1-h9))
//Heat added per kg of steam generated(in kJ/kg):
Q=(h2-h1)+(h4-h3a)
//Thermal efficiency:
n=Wnet/Q*100
printf("\n RESULT \n")
printf("\nThermal efficiency = %f percent",n)