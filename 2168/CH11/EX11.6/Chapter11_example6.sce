clc
clear
//Input data
n=6//Number of cylinders
P=62//Power in HP
N=3000//Speed in r.p.m
nv=85//Volumetric efficiency in percent
nt=25//Thermal efficiency in percent
CV=10500//Calorific value in kcal/kg
af=15//Air fuel ratio
T=273//Standard atmosphere temperature in K
p=1.03//Standard atmosphere pressure in kg/cm^2
R=29.27//Characteristic gas constant in kg.m/kg.K
J=427//Mechanical equivalent of heat in kg.m/kcal

//Calculations
q=(P*4500)/(J*(nt/100))//Heat supplied in kcal/min
F=(q/CV)//Fuel supplied per minute in kg
Fc=(F/N)*(2/n)//Fuel supplied per cycle per cylinder in kg
wt=(af*Fc)//Weight of air supplied per cycle in kg
d=((((wt)*R*T)/(p*10^4*(3.14/4)*(nv/100)))^(1/3))*100//Diameter in cm

//Output
printf('Cylinder bore = stroke = %3.2f cm',d)
