//pathname=get_absolute_file_path('8.16.sce')
//filename=pathname+filesep()+'8.16-data.sci'
//exec(filename)
//Steam flow rate(in kg/s):
m=35
//From steam tables:
h1=3530.9 //kJ/kg
s1=6.9486 //kJ/kg.K
s2=s1
x2=0.864
h2=2288.97 //kJ/kg
v3=0.001017 //m^3/kg
h3=251.40 //kJ/kg
//Pump work(in kJ/kg):
Wp=v3*(70-0.20)*10^2
//Turbine work(in kJ/kg):
Wt=h1-h2
//Net work(in kJ/kg):
Wnet=Wt-Wp
//Power produced(in MW):
P=m*Wnet/10^3
//Enthalpy at state 4(in kJ/kg):
h4=h3+Wp
//Total heat supplied to the boiler(in kJ/s):
Q=m*(h1-h4)
//Thermal efficiency:
n=Wnet*m/Q*100
printf("\n RESULT \n")
printf("\nNet power = %f MW",P)
printf("\nThermal efficiency = %f percent",n)