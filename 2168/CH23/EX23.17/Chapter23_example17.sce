clc
clear
//Input data
Vs=0.0015//Stroke volume in cu.m
rc=5.5//Volume compression ratio
p2=8//Pressure at the end of compression stroke in kg/cm^2
T2=350+273//Temperature at the end of compression stroke in K
p3=25//Pressure in kg/cm^2
x=(1/30)//Fraction of distance travelled by piston
pa=1/16//Petrol air mixture ratio
R=29.45//Characteristic gas constant in kg.m/kg degree C
CV=10000//Calorific value of fuel in kcal per kg
Cv=0.23//Specific heat in kJ/kg.K

//Calculations
V2=(Vs*10^6)/(rc-1)//Volume in c.c
V3=(Vs*10^6)*x+V2//Volume in c.c
T3=(T2*p3*V3)/(p2*V2)//Temperature in K
W=((p3+p2)/2)*(V3-V2)//Workdone in kg.cm
mM=((p2*V2)/(T2*R*100))//Mass of mixture present in kg
dE=(mM*Cv*(T3-T2))//Change in energy in kcal
q=(dE+(W/(427*100)))//Heat in kcal
qc=(1/(1+(1/pa)))*mM*CV //Heat in kcal
ql=(qc-q)/mM//Heat lost in kcal per kg of charge

//Output
printf('Heat lost per kg of charge during explosion is %3.0f kcal',ql)
