clc
clear
D=[7.5,10]//Dimensions of four cylinder in 7.5 cm diameter and 10 cm stroke
n=6//Six cylinder
pC=84//Percentage of carbon in volatile fuel
pH2=16//Percentage of hydrogen in volatile fuel
dc=(38.5/1000)//Diameter of the throat of the choke tube in m
N=3000//Speed in r.p.m
nv=0.8//Volumetric efficiency in ratio
p=0.914//Pressure at the throat of the choke tube in kg/cm^2
T=15.5+273//Temperature at the throat of the choke tube in K
Ts=273//Temperature of 0 degree C in K
ps=1.027//Atmospheric pressure in kg/cm^2
Ra=29.27//Universal gas constant for air in kg.m/kg.K
Rf=9.9//Gas constant for fuel in kg.m/kg.K
pO2=23//Composition by weight of oxygen in air in percent
pN2=77//Composition by weight of nitogen in air in percent
mO2=32//Molecular weight of O2
mH2=2//Molecular weight oh H2
mC=12//Molecular weight of carbon

//Calculations
Vm=((3.14/4)*(D(1)/100)^2*(D(2)/100)*n*(N/2)*nv)//Volume of mixture supplied per sec in m^3
qa=((100/pO2)*(((pC/100)*(mO2/mC))+((pH2/100)*(mO2/(2*mH2)))))//Quantity of air required for complete combustion of fuel in kg
vf=(Rf*Ts)/(ps*10^4)//Specific volume of volatile fuel in m^3/kg
va=(Ra*Ts)/(ps*10^4)//Specific volume of air in m^3/kg
wf=(Vm/(qa*va+vf))//Flow rate of fuel in kg/min
Fc=(wf*60)//Fuel consumption in kg/hour
da=(p*10^4)/(Ra*T)//Density of air at the throat of the choke in kg/m^3
Va=((qa*wf)/((3.14/4)*dc^2*da*60))//Speed of air at throat in m/s

//Output
printf('(a) The fuel consumption is %3.1f kg/hr \n (b) The speed of the air through the choke is %3.1f m/s',Fc,Va)
