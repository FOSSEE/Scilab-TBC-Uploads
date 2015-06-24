//pathname=get_absolute_file_path('13.07.sce')
//filename=pathname+filesep()+'13.07-data.sci'
//exec(filename)
//Power of the turbine(in hp):
P=5000
//Steam required(in kg of steam/hp-hr):
m=P*6/3600
//Efficiency of nozzle:
n=0.90
//Nozzle angle:
a=12
//Pitch(in cm):
p=5
//Thickness(in cm):
t=0.3
//From steam tables:
h1=2794 //kJ/kg
s1=6.4218 //kJ/kg.K
s2=s1
x2=0.9478
h2=2662.2 //kJ/kg
x2a=0.9542
v2a=0.2294 //m^3/kg
//Change in enthalpy(in kJ/kg):
h12=h1-h2
//Actual change(in kJ/kg):
h12a=n*h12
//Velocity at inlet(in m/s):
C2=sqrt(2*h12a*10^3)
//Area at exit of nozzle(in cm^2):
A2=m*v2a/C2*10^4
//Approximate length of the nozzle(in cm):
l=60*%pi/3
//Number of nozzles:
n=int(l/p)+1
//Correct length of nozzle arc:
l1=n*p
//Radial height of nozzle(in cm):
h=A2/((p*sin(a*%pi/180)-t)*n)
printf("\nRESULT\n")
printf("\nLength of nozzle = %d cm",l1)
printf("\nRadial height of nozzle = %f cm",h)