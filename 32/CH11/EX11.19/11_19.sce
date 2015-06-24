//pathname=get_absolute_file_path('11.19.sce')
//filename=pathname+filesep()+'11.19-data.sci'
//exec(filename)
//Ambient temperature(in K):
Ta=20+273
//Velocity(in m/s):
V=20
//Draught lost through grate(in mm of water column):
hw1=30
//Mechanical efficiency:
nm=0.80
//Rate at which coal is burnt(in kg/hr):
mf=1000
//Rate at which air is supplied(in kg/hr):
ma=16
//Ambient pressure(in bar):
pa=1.01325
//Density of air(in kg/m^3):
d=1.29
//Acceleration due to gravity(in m/s^2):
g=9.81
//Zero temperature(in K):
T0=273
//Pressure equivalent to velocity head(in N/m^2):
P1=d*V^2/2
P=P1/g //mm of water column
//Total draught loss(in mm of water column):
hw=hw1+P
//Pressure required(in N/m^2):
p=hw*g
//F.D. fan power requirement(in W):
PFD=p*mf*ma*Ta/(d*T0*nm*3600)
printf("\n RESULT \n")
printf("\nF.D. fan power = %f W",PFD)