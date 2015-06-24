//pathname=get_absolute_file_path('8.25.sce')
//filename=pathname+filesep()+'8.25-data.sci'
//exec(filename)
//Mass flow rate(in kg/s):
mhp=2
mlp=1.5
//Expansion efficiency:
n=0.90
//Power developed by the turbine(in kW):
P=3000
//From steam tables:
h1=3034.8 //kJ/kg
s1=6.8844 //kJ/kg.K
s3=s1
x3=0.9566
h3=2611.04 //kJ/kg
h2=2706.7 //kJ/kg
hin=h2
xout=0.8535
hout=2222.31 //kJ/kg
h4=2676.25 //kJ/kg
h5=2290 //kJ/kg
//Enthalpy at state 3'(in kJ/kg):
h3a=h1-(h1-h3)*n
//Enthalpy of steam going out(in kJ/kg):
houta=hin-(hin-hout)*n
//Mass flow rate of steam(in kg/s):
ms=P/(hin-hout)
//Enthalpy at state 5'(in kJ/kg):
h5a=h4-(h4-h5)*n
//Power output from mixed pressure turbine(in kW):
p=mhp*(h1-h3a)+(mhp+mlp)*(h4-h5a)
printf("\n RESULT \n")
printf("\nPower = %f kW",p)