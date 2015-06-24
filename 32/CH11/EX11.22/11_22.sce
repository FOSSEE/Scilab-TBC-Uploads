//pathname=get_absolute_file_path('11.22.sce')
//filename=pathname+filesep()+'11.22-data.sci'
//exec(filename)
//Static draught(in mm of water column):
hw1=100
//Amount of discharge(in m^3/s):
mf=30
//Area of outlet section(in m^2):
a=1.8
//Ambient temperature(in K):
Ta=300
//Density(in kg/m^3):
d=1.293
//Fan efficiency:
nm=0.85
//Flue gas temperature(in K):
Tf=150+273
//Zero temperature(in K):
T0=273
//Velocity of air(in m/s):
V=mf/a
//Pressure created due to the gases(in mm of water):
p=d*V^2/(2*9.81)
//Total draught(in mm of water column):
hw=hw1+p
//Power of motor of forced draught fan(in kW):
PFD=hw*9.81*mf*Ta/(T0*nm*10^3)
//Power consumption of induced draught fan(in kW):
PID=PFD*Tf/Ta
printf("\nRESULTS\n")
printf("\nPower consumption of ID fan = %f kW",PID)