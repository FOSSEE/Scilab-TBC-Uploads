//pathname=get_absolute_file_path('8.06.sce')
//filename=pathname+filesep()+'8.06-data.sci'
//exec(filename)
//Pressure of steam leaving the boiler(in MPa):
p1=200
//Temperature(in K):
T1=650+273
//Pressure of steam leaving the turbine(in MPa):
p4=0.05
//From steam tables:
h2=3675.3 //kJ/kg
s2=6.6582 //kJ/kg.K
s3=s2
h4=137.82 //kJ/kg
v4=0.001005 //m^3/kg
sf=0.4764 //kJ/kg.K
sfg=7.9187 //kJ/kg.K
hf=137.82 //kJ/kg
hfg=2423.7 //kJ/kg
//For case b:
s6=s2
hf8=721.11 //kJ/kg
hfg8=2048 //kJ/kg
vf8=0.001115 //m^3/kg
sf8=2.0462 //kJ/kg.K
sfg8=4.6166 //kJ/kg.K
//For case c:
s10=s2
s9=s2
T10=370.36+273 //K(by interpolation)
h10=3141.81 //kJ/kg
sf4=1.7766 //kJ/kg.K
sfg4=5.1193 //kJ/kg.K
hf4=604.74 //kJ/kg
hfg4=2133.8 //kJ/kg
h11=hf4
h13=1087.31 //kJ/kg
v11=0.001084 //m^3/kg
v13=0.001252 //m^3/kg
p10=40 //bar
p9=4 //bar
//Case a:
//Dryness farction at state 3:
x3=(s3-sf)/sfg
//Enthalpy at state 3(in kJ/kg):
h3=hf+x3*hfg
//Enthalpy at state 1(in kJ/kg):
h1=h4+v4*(p1-p4)
//Net output per kg of steam(in kJ/kg):
Wnet=(h2-h3)-(h1-h4)
//Heat added(in kJ/kg):
Q=h2-h1
//Thermal efficiency:
na=Wnet/Q*100
printf("\n RESULT \n")
printf("\nThermal efficiency in case a=%f percent",na)
//Case b:
//Dryness fraction at state 6(in kJ/kg.K):
x6=(s6-sf8)/sfg8
//Enthalpy at state 6(in kJ/kg):
h6=hf8+x6*hfg8
//Enthalpy at state 7(in kJ/kg):
h7=hf8
//Enthalpy at state 5(in kJ/kg):
h5=h4+v4*(p1-p4)*10^2
//Mass of steam(in kg):
m=(h7-h5)/(h6-h5)
//Enthalpy at state 1(in kJ/kg):
h1=h7+vf8*(p1-p4)*10^2
//Thermal efficiency:
nb=((h2-h6)+(1-m)*(h6-h3)-((1-m)*(h5-h4)+(h1-h7)))/(h2-h1)*100
printf("\nThermal efficiency in case b=%f percent",nb)
//Case c:
//Dryness fraction at state 9:
x9=(s9-sf4)/sfg4
//Enthalpy at state 9(in kJ/kg):
h9=hf4+x9*hfg4
//Enthalpy at state 8(in kJ/kg):
h8=h4+v4*(p9-p4)*10^2
//Enthalpy at state 12(in kJ/kg):
h12=h11+v11*(p10-p9)*10^2
//Enthalpy at state 1'(in kJ/kg):
h1a=h13+v13*(p1-p10)*10^2
//Mass of steam flowing through first heater:
m1=(h13-h12)/(h10-h12)
//Mass of steam flowing through second heater:
m2=((1-m1)*h11-(1-m1)*h8)/(h9-h8)
//Work done by Condensate extraction pump(in kJ/kg):
Wcep=(1-m1-m2)*(h8-h4)
//Work done by feed pump 1(in kJ/kg):
WFP1=h1a-h13
//Work done by feed pump 2(in kJ/kg):
WFP2=(1-m1)*(h12-h11)
//Thermal efficiency:
nc=((h2-h10)+(1-m1)*(h10-h9)+(1-m1-m2)*(h9-h3)-(Wcep+WFP1+WFP2))/(h2-h1a)*100
printf("\nThermal efficiency in case c=%f percent",nc)