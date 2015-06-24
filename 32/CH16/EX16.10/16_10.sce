//pathname=get_absolute_file_path('16.10.sce')
//filename=pathname+filesep()+'16.10-data.sci'
//exec(filename)
//Barometer reading(in cm):
h=75.6
//Density of mercury(in kg/cm^3):
d=0.013591
//Diameter of orifice(in m):
d1=15*10^(-3)
//Coefficient of discharge:
r1=0.65
//Acceleration due to gravity(in m/s^2):
g=9.81
//Atmospheric temperature(in K):
T=25+273
//Manometer reading(in cm):
h1=13
//Cross-sectional area of orifice(in m^2):
A=%pi*d1^2/4
//Atmospheric pressure(in kPa):
p=h*d*g*10
//Specific volume at atmospheric conditions(in m^3/kg):
v=(R*T)/p
//Density of air(in kg/m^3):
da=1/v
//Pressure difference across orifice(in kPa):
pd=h1*d*g*10
//Height of air column(in m):
ha=pd*10^3/(da*g)
//Free air delivery(in m^3/min):
f=r1*A*sqrt(2*g*ha)*60
printf("\n RESULT \n")
printf("\nFree air delivery = %f m^3/min",f)