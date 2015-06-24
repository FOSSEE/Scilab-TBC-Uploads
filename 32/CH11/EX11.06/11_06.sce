//pathname=get_absolute_file_path('11.06.sce')
//filename=pathname+filesep()+'11.06-data.sci'
//exec(filename)
//Rate at which coal is burnt(in kg/hr):
R=2.5*10^3
//Mass per kg of fuel required for complete combustion(in kg):
m=20
//Temperature of burnt gases(in K):
Tg=327+273
//Ambient air temperature(in K):
Ta=27+273
//Pressure head(in mm):
h=7+6+3+2
//Ratio of actual natural draught to theoretical draught:
na=0.90
//Acceleration due to gravity(in m/s^2):
g=9.81
//Actual natural draught(in mm of water):
hw=h/na
//Height of chimney(in m):
H=hw/(353*(1/Ta-(m+1)/(m*Tg)))
//Density of hot gases(in kg/m^3):
dg=353/Tg*(m+1)/m
//Height of hot gases column(in m):
hg=H*((m+1)/m*Tg/Ta-1)
//Mass flow rate of hot gases(in kg/s):
Mg=R*hw/3600
//Velocity of got gases(in m/s):
C=sqrt(2*g*hg)
//Diameter of chimney(in m):
D=sqrt((4*Mg)/(%pi*C*dg))
printf("\n RESULT \n")
printf("\nDiameter of chimney = %f m",D)