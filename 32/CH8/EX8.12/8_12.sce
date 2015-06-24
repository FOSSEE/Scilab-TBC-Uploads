//pathname=get_absolute_file_path('8.12.sce')
//filename=pathname+filesep()+'8.12-data.sci'
//exec(filename)
//Pressure of the steam entering the boiler(in bar):
p1=100
//Temperature of the steam entering the turbine(in C):
T1=500
//Condensor pressure(in bar):
p6=0.075
//Pressure at which steam is extracted at exit of HPT(in bar):
p3=20
//Pressure at which steam is extracted at exit of IPT(in bar):
p4=4
//Temperature at which feed water leaves closed feed warere heater(in C):
T=200
//Net power output(in MW):
W=100
//From steam tables:
h2=3373.7 //kJ/kg
s2=6.5966 //kJ/kg.K
s3=s2
s4=s2
s5=s2
T3=261.6 //C(by interpolation)
h3=2930.57 //kJ/kg
h4=2612.65 //kJ/kg
h5=2055.09 //kJ/kg
h10=908.79 //kJ/kg
h8=604.74 //kJ/kg
h1=4.18*T
h11=h10
v6=0.001008 //m^3/kg
h6=168.79 //kJ/kg
h8=604.74 //kJ/kg
v8=0.001084 //m^3/kg
//For modified part:
h3a=3247.6 //kJ/kg
s3a=7.1271 //kJ/kg.K
s4a=s3a
s5a=s3a
T4=190.96 //C(by interpolation)
h4a=2841.2 //kJ/kg
h5a=2221.11 //kJ/kg
//Enthalpy at state 7(in kJ/kg):
h7=h6+v6*(p4-p6)*10^2
//Enthalpy at state 9(in kJ/kg):
h9=h8+v8*(p3-p4)*10^2
//Mass of steam bled out in closed feed water heater(in kg/kg of steam generated):
m1=(h1-h9)/(h3-h10)
m2=((h8-h7)-m1*(h11-h7))/(h4-h7)
//Net work per steam generated(in kJ/kg):
Wnet=(h2-h3)+(1-m1)*(h3-h4)+(1-m1-m2)*(h4-h5)-((1-m1-m2)*(h7-h6)+(h9-h8))
//Heat added(in kJ/kg):
Q=h2-h1
//Thermal efficiency:
n=Wnet/Q*100
//Steam genration rate(in kg/s):
sgc=W*10^3/Wnet
printf("\n RESULT \n")
printf("\nThermal efficiency = %f percent",n)
printf("\nSteam generation rate = %f kg/s",sgc)
//For modified part:
//Mass of steam bled out in closed feed water heater(in kg/kg of steam generated):
m2a=((h8-h7)-m1*(h11-h7))/(h4a-h7)
//Net work per steam generated(in kJ/kg):
Wneta=(h2-h3)+(1-m1)*(h3a-h4a)+(1-m1-m2a)*(h4a-h5a)-((1-m1-m2a)*(h7-h6)+(h9-h8))
//Heat added(in kJ/kg):
Qa=h2-h1+(1-m1)*(h3a-h3)
//Thermal efficiency:
na=Wneta/Qa*100
//% Increase in thermal efficiency due to reheating:
I=(na-n)/n*100
printf("\n\nThermal efficiency = %f percent",na)
printf("\n Percentage increase in efficiency due to reheating = %f percent",I)