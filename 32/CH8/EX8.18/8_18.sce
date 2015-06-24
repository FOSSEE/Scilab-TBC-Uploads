//pathname=get_absolute_file_path('8.18.sce')
//filename=pathname+filesep()+'8.18-data.sci'
//exec(filename)
//Net output(in MW):
P=50
//From steam tables:
h1=3373.7 //kJ/kg
s1=6.5966 //kJ/kg.K
s6=s1
s2=s1
s3=7.7622 //kJ/kg.K
s8=s3
s4=s3
h6=2930.572 //kJ/kg
h3=3478.5 //kJ/kg
T2=181.8//C
h2=2782.8 //kJ/kg
T8=358.98//C
h8=3188.7 //kJ/kg
x4=0.95
h4=2462.99 //kJ/kg
h11=856.8 //kJ/kg
h9=604.74 //kJ/kg
h7=908.79 //kJ/kg
h7a=h7
h4a=191.83 //kJ/kg
v4a=0.001010//m^3/kg
v9=0.001084//m^3/kg
//Enthalpy at state 5(in kJ/kg):
h5=h4a+v4a*(4-0.1)*10^2
//Enthalpy at state 10(in kJ/kg):
h10=h9+v9*(100-4)*10^2
//Mass per kg of steam from boiler(in kg):
m6=(h11-h10)/(h6-h7)
m8=(h9-(1-m6)*h5-m6*h7a)/(h8-h5)
m6=0.135
m8=0.105
//Work in turbines(in kJ/kg):
Whpt=(h1-h6)+(1-m6)*(h6-h2)
Wlpt=(1-m6)*(h3-h8)+(1-m6-m8)*(h8-h4)
//Pump works(in kJ/kg)
Wcep=(1-m6-m8)*(h5-h4a)
Wfp=h10-h9
//Mass of steam entering first stage of turbine(in kg/s):
m=P*10^3/(Whpt+Wlpt-Wcep-Wfp)
//Heat supplied in the boiler(in kJ/s):
Q=m*(h1-h11)
//Thermal efficiency:
n=P*10^3/Q*100
printf("\n RESULT \n")
printf("\nMass of steam bled at 20 bar = %f kg per kg of steam entering first stage",m6)
printf("\nMass of steam bled at 4 bar = %fkg per kg of steam entering first stage",m8)
printf("\nMass of steam entering first stage = %f kg/s",m)
printf("\nThermal efficiency = %f percent",n)