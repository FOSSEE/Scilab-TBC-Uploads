
clc
clear
//Input data
P=200//Power in MW
p=180//Pressure in bar
T=550//Temperature in degree C
P1=600//Power in MW
p1=300//Pressure in bar
T1=580//Temperature in degree C
nt=90//Turbine efficiency in percent

//Calculations
h1=3430//Enthalpy in kJ/kg
h2s=3040//Enthalpy in kJ/kg
h12s=(h1-h2s)//Enthalpy in kJ/kg
h12=(nt/100)*h12s//Enthalpy in kJ/kg
h2=3070//Enthalpy in kJ/kg
v2=0.06//Specific volume in m^3/kg
h4=3560//Enthalpy in kJ/kg
h3s=2000//Enthalpy in kJ/kg
h13s=(h1-h3s)//Enthalpy in kJ/kg
h13=(nt/100)*h13s//Enthalpy in kJ/kg
w=(P*10^3)/h13//Mass flow rate in kg/s
Vbm=350//Velocity in m/s
N=3000//Speed in rpm
a=25//Angle in degrees
Dm=(Vbm*60)/(3.14*N)//Diameter in m
hD=0.3//Assuming (hb/Dm)max 
hb=(hD*Dm)//Height in m
Ab=(3.14*Dm*hb*0.9*sind(a))//Flow area in m^2
V1=(Vbm/cosd(a))//Velocity in m/s
Vo=(Ab*V1)//Volume flow rate in m^3/s
v=(Vo/w)//Specific volume in m^3/kg
h5s=2456//Enthalpy in kJ/kg
p5=0.36//Pressure in bar
h45s=(h4-h5s)//Enthalpy in kJ/kg
h45=(nt/100)*h45s//Enthalpy in kJ/kg
h5=h4-h45//Enthalpy in kJ/kg
x5=0.952//Dryness fraction
h56s=(h5-2340)//Enthalpy in kJ/kg
h56=(nt/100)*h56s//Enthalpy in kJ/kg
h6=h5-h56//Enthalpy in kJ/kg
v6=18//Specific volume in m^3/kg
mm=(Vo/v6)//Maximum mass flow that one stage can accommodate in kg/s
np=(w/mm)//Number of parallel exhausts
rp=(p1/4)//Reheat pressure in bar
xh1=3410//Enthalpy in kJ/kg
xh2s=3015//Enthalpy in kJ/kg
xh12s=xh1-xh2s//Enthalpy in kJ/kg
xh12=(nt/100)*xh12s//Enthalpy in kJ/kg
xv2=0.035//Specific volume in m^3/kg
xh4=3060//Enthalpy in kJ/kg
xh3s=1960//Enthalpy in kJ/kg
xh13s=xh1-xh3s//Enthalpy in kJ/kg
xh3=(xh1-xh13s)//Enthalpy in kJ/kg
xw=(P1*10^3)/xh13s//Mass flow rate in kg/s
xvm=(Vo/xw)//Maximum specific volume in m^3/kg
Vf=(xw*xv2)//Volume flow rate in m^3/s
xh5s=2300//Enthalpy in kJ/kg
xh45s=xh4-xh5s//Enthalpy in kJ/kg
xh45=(nt/100)*xh45s//Enthalpy in kJ/kg
xh5=xh4-xh45s//Enthalpy in kJ/kg
xv5=1.25//Specific volume in m^3/kg
xx5=0.86//Dryness fraction
xh6s=2050//Enthalpy in kJ/kg
xh56s=xh5-xh6s//Enthalpy in kJ/kg
xh56=(nt/100)*xh56s//Enthalpy in kJ/kg
xh6=(xh5-xh56)//Enthalpy in kJ/kg
xv6=12//Specific volume in m^3/kg
xx6=0.792//Dryness fraction
xmm=(Vo/xv6)//Maximum mass flow in kJ/kg
xnp=ceil(xw/xmm)//Number of parallel exhausts

//Output
printf('Number of parallel exhausts in : \n (a)condition a are %i \n (b)condition b are %i',np,xnp) 
