clc
clear
//Input data
n=8//Number of cylinders
d=8.57//Bore in cm
l=8.25//Stroke in cm
r=7//Compression ratio
N=4000//Speed in r.p.m
la=53.35//Length of the arm in cm
t=10//Test duration in min
br=40.8//Beam reading in kg
gas=0.455//gasoline in kg. In textbook, it is given wrong as 4.55
CV=11400//Calorific value in kcal/kg
Ta=21+273//Temperature of air in K
pa=1.027//Pressure of air in kg/cm^2
wa=5.44//Rate of air in kg/min
J=427//Mechanical equivalent of heat in kg.m/kcal
R=29.27//Characteristic gas constant in kg.m/kg.K

//Calculations
bhp=(2*3.14*N*br*la)/(4500*100)//Brake horse power in B.H.P
pb=(bhp*4500)/((n/2)*(l/100)*(3.14/4)*d^2*N)//Brake mean effective pressure in kg/cm^2
bsfc=(gas*60)/bhp//Brake specific fuel consumption in kg/b.h.p.hr
bsac=((wa*60)/bhp)//Brake specific fuel consumption in kg/b.h.p.hr
nb=((bhp*4500)/(J*gas*CV))*100//Brake thermal efficiency in percent
Vd=((3.14/4)*d^2*l)//Piston displacement in c.c/cycle
Pd=(Vd/10^6)*(N/2)*n//Piston displacement in m^3/min
Va=((wa*R*Ta)/(pa*10^4))//Volume of air used in m^3/min
nv=(Va/Pd)*100//Volumetric efficiency in percent
af=(wa/gas)//Air fel ratio

//Output
printf('(a) the B.H.P delivered s %3.0f h.p \n (b) the b.m.e.p is %3.1f kg/cm^2 \n (c) the b.s.f.c is %3.3f kg/b.h.p.hr \n (d) the brake specific air consumption is %3.3f kg/b.h.p.hr \n (e) the brake thermal efficiency is %3.1f percent \n (f) the volumetric efficiency is %3.0f percent \n (g) the air fuel ratio is %3.2f',bhp,pb,bsfc,bsac,nb,nv,af)
