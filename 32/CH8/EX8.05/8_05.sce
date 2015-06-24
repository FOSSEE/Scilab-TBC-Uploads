//pathname=get_absolute_file_path('8.05.sce')
//filename=pathname+filesep()+'8.05-data.sci'
//exec(filename)
//Pressure of steam leaving the boiler(in MPa):
p1=10
//Temperature(in K):
T1=700+273
//Pressure of steam leaving the turbine(in MPa):
p4=0.005
//Output of the plant(in MW):
W=50
//Temperature of the cooling water entering and leaving the condensor(in K):
Twin=15+273
Twout=30+273
//From steam tables:
h2=3870.5 //kJ/kg
s2=7.1687 //kJ/kg.K
s3=s2
sf=0.4764 //kJ/kg.K
sfg=7.9187 //kJ/kg.K
hf=137.82 //kJ/kg
hfg=2423.7 //kJ/kg
h4=hf
v4=0.001005 //m^3/kg
//Specific heat of water(in kJ/kg.K):
Cp=4.18
//Dryness fraction at state 3:
x3=(s3-sf)/sfg
//Enthalpy at state 3(in kJ/kg):
h3=hf+x3*hfg
//Enthalpy at state 1(in kJ/kg):
h1=h4+v4*(p1-p4)
//Net output per kg of steam(in kJ/kg):
Wnet=(h2-h3)-(h1-h4)
//Mass flow rate of steam(in kg/s):
ms=W*10^3/Wnet
//Mass flow rate of water(in kg/s):
mw=(h3-h4)*ms/(Cp*(Twout-Twin))
//Heat added per kg of steam(in kJ/kg):
Q=h2-h1
//Thermal efficiency:
n=Wnet/Q
//Ratio of heat supplied:
r=(h2-h1)/(h3-h4)
printf("\n RESULT \n")
printf("\nMass flow rate of steam = %f kg/s",ms)
printf("\nMass flow rate of condensor cooling water = %f kg/s",mw)
printf("\nThermal efficiency=%f",n*100)
printf("\nRatio of heat supplied and rejected = %f",r)