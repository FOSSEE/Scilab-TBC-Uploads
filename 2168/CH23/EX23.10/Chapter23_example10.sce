clc
clear
//Input data
d=25//Bore in cm
l=50//Stroke in cm
N=240//Speed in r.p.m
n=100//Number of times fires per minute
qc=0.3//Quantity of coal gas used in cu.m per minute
h=100//Head in mm of water
bp=1.03//Barometric pressure in kg/cm^2
T=15+273//Temperature in K
ma=2.82//Mass of air used in kg per minute
R=29.45//Characteristic gas constant in kg.m/kg.K

//Calculations
gp=(bp+(100/13.6)*(bp/76))//Gas pressure in kg/cm^2
Vc=(qc*(gp/bp)*(273/T))//Volume of coal gas at N.T.P in cu.m per minute
Vce=(Vc/n)//Volume of coal gas per explosion in cu.m at N.T.P
va=(ma*R*273)/(bp*10^4)//Volume of air taken in at N.T.P in cu.m per min
V=((va-(((N/2)-n)*Vce))/(N/2))//Volume in cu.m
tV=(V+Vce)//Total volume of charge in cu.m at N.T.P
Vs=((3.14/4)*(d^2*l)*10^-6)//Swept volume in cu.m
nv=(tV/Vs)*100//Volumetric efficiency in percent

//Output
printf('(a) the charge of air per working cycle as measured at N.T.P is %3.5f cu.m \n (b) the volumetric efficiency is %3.1f percent',tV,nv)
