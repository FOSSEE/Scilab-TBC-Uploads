//pathname=get_absolute_file_path('15.04.sce')
//filename=pathname+filesep()+'15.04-data.sci'
//exec(filename)
//Height in mercury column in condenser(in cm):
h=69
//Inlet temperature(in C):
T1=30
//Leakage(in kg/hr):
L=60
//Density of mercury(in kg/cm^3):
d=0.0135951
//Acceleration due to gravity(in m/s^2):
g=9.81
//Gas constant(in kJ/kg.K):
R=0.287
//Rpm of engine:
n=240
//L/D ratio:
r=1.5
//From steam tables:
ps=4.246 //kPa
vg=32.89 //m^3/kg
//Absolute pressure at inlet to air pump(in kPa):
pt=(76-h)*d*10^4*g
//Partial pressure of air(in kPa):
pa=5.09
//Volume of 60 kg air(in m^3/hr):
V=L*R*(273+T1)/pa
printf("\nRESULT\n")
printf("\nCapacity of air pump = %f m^3/hr",V)
//Bore diameter(in cm):
D=((V*4)/(%pi*r*n*60))^(1/3)*100
//Stroke length(in cm):
l=D*r
//Mass of water vapour extracted with air(in kg/hr):
m=V/vg
printf("\nBore = %f cm",D)
printf("\nStroke = %f cm",l)
printf("\nMass of water vapour extracted with air = %f kg/hr",m)