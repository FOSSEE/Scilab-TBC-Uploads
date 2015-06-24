//pathname=get_absolute_file_path('7.07.sce')
//filename=pathname+filesep()+'7.07-data.sci'
//exec(filename)
//Mass of water(in kg):
m=10
//Initial temperature(in K):
T1=150+273
//Initial velocity(in m/s):
V1=25
//Initial elevation(in m):
z1=10
//Final temperature(in K):
T2=20+273
//Final velocity(in m/s):
V2=10
//Final elevation(in m):
z2=3
//Pressure of environment(in MPa):
p0=0.1
//Temperature of environment(in K):
T0=25+273
//Acceleration due to gravity(in m/s^2):
g=9.8
//From steam tables:
//Dead state of water
u0=104.88 //kJ/kg
v0=1.003*10^(-3) //m3/kg
s0=0.3674 //kJ/kg·K
u1=2559.5 //kJ/kg
v1=0.3928 //m3/kg
s1=6.8379 //kJ/kg·K
u2=83.95 //kJ/kg
v2=0.001002 //m3/kg
s2=0.2966 //kJ/kg·K
//Availability at initial state(in kJ):
A1=m*((u1-u0)*10^3+p0*10^3*(v1-v0)-T0*(s1-s0)*10^3+V1^2/2+g*z1)
//Availability at final state(in kJ):
A2=m*((u2-u0)*10^3+p0*10^3*(v2-v0)-T0*(s2-s0)*10^3+V2^2/2+g*z2)
//Change in availability(in kJ):
dA=A2-A1
printf("\nRESULT")
printf("\nInitial availabilty = %f kJ",A1/10^3)
printf("\nFinal availabilty = %f kJ",A2/10^3)
printf("\nAvailability decreases by %f kJ",-dA/10^3)