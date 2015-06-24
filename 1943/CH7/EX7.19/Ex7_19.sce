
clc
clear
//Input data
P=8//Power in MW
N=5000//Speed in rpm
p=40//pressure in bar
T=500//Temperature in degree C
p2=0.1//Pressure in bar
in=0.85//Internal efficiency of turbine
nm=0.96//Mechanical efficiency
nn=0.92//Nozzle efficiency
a=15//Nozzle angle in degrees
Vb=300//Blade velocity in m/s

//Calculations
V1=(2*Vb)/cosd(a)//Velocity in m/s
dh=((V1/44.72)^2/nn)//Change in enthalpy in kJ/kg
h1=3445.3//Enthalpy in kJ/kg
s1=7.0901//Entropy in kJ/kg.K
s2=s1//Entropy in kJ/kg.K
x2=(s2-0.6493)/7.5009//Dryness fraction
h2s=(191.83+x2*2392.8)//Enthalpy in kJ/kg
h12s=(h1-h2s)//Change in enthalpy in kJ/kg
n=(h12s/dh)//Number of stages
w=((P*1000)/(in*nm))/h12s//Mass flow rate in kg/s
h13=(nn*dh)//Change in enthalpy in kJ/kg
h3=h1-h13//Enthalpy in kJ/kg
v3=0.17//Specific volume in m^3/kg
A=(w*v3)/V1//Area in m^2
hm=(A/(((Vb*60)/N)*sind(a)))*1000//Height in mm

//Output
printf('(a) the number of impulse stages are%3.0f \n (b) the nozzle height is %3.1f mm',n,hm)
