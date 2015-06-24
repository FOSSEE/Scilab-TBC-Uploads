//pathname=get_absolute_file_path('7.04.sce')
//filename=pathname+filesep()+'7.04-data.sci'
//exec(filename)
//Mass of steam(in kg):
m=5
//Initial elevation(in m):
z1=10
//Initial velocity(in m/s):
V1=25
//Final elevation(in m):
z2=2
//Final velocity(in m/s):
V2=10
//Dead state of water
u0=104.86 //kJ/kg
v0=1.0029*10^(-3) //m3/kg
s0=0.3673 //kJ/kg·K
p0=100 //kPa
T0=25+273 //K
//Initial state
u1 = 2550 //kJ/kg
v1 = 0.5089 //m3/kg
s1 = 6.93 //kJ/kg·K
//Final state
u2=83.94 //kJ/kg
v2=1.0018*10^(-3) //m3/kg
s2=0.2966 //kJ/kg·K
//Acceleration due to gravity(in m/s^2):
g=9.81
//Availability at initial state(in kJ):
A1=m*((u1-u0)*10^3+p0*10^3*(v1-v0)-T0*(s1-s0)*10^3+V1^2/2+g*z1)
//Availability at final state(in kJ):
A2=m*((u2-u0)*10^3+p0*10^3*(v2-v0)-T0*(s2-s0)*10^3+V2^2/2+g*z2)
//Change in availability(in kJ):
dA=A2-A1
printf("\nRESULT")
printf("\nAvailability decreases by %f kJ",-dA/10^3)