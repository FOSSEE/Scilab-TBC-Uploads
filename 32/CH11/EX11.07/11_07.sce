//pathname=get_absolute_file_path('11.07.sce')
//filename=pathname+filesep()+'11.07-data.sci'
//exec(filename)
//Draught in water column(in mm):
hw=50
//Temperature of burnt gases(in K):
T=300+273
//Rate at which coal is burnt(in kg/s):
M=2000/3600
//Mass per kg of fuel required for complete combustion(in kg):
m=19
//Ambient air temperature(in K):
T1=27+273
//Zero temperature(in K):
T0=273
//Mechanical efficiency:
n=0.90
//Pressure applied by the draught water(in N/m^2):
P=hw*9.81
//Density of hot gases(in kg/m^3):
d=1.293
//Power required in FD fan(kW):
PFD=P*m*M*T1/(d*T0*n*1000)
//Power required in 1D fan(kW):
P1D=P*m*M*T/(d*T0*n*1000)
printf("\n RESULT \n")
printf("\nPower for FD fan = %f kW",PFD)
printf("\nPower for 1D fan = %f kW",P1D)