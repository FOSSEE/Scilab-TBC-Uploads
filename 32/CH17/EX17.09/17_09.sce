//pathname=get_absolute_file_path('17.09.sce')
//filename=pathname+filesep()+'17.09-data.sci'
//exec(filename)
//Indicator constant(in kN/m^2):
k=25
//Rpm:
N=300
//Swept volume(in m^3):
Vs=1.5*10^(-2)
//Load(in kg):
F=60
//Radius(in m):
r=0.5
//Calorific value of fuel(in kJ/kg):
C=43000
//Acceleration due to gravity(in m/s^2):
g=9.81
//Fuel supplied at rate(in kg/min):
m=0.12
//Indicatedmep(in kPa):
Pimep=10*k
//Indicated power(in kW):
IP=Pimep*Vs*N/(2*60)
//Brake power(in kW):
BP=2*%pi*N/(2*60)*(F*g*r)*10^(-3)
//Mechanical efficiency:
nm=BP/IP
printf("\n RESULT \n")
printf("\nBrake power = %f W",BP)
printf("\nIndicated power = %f kW",IP)
printf("\nMechanical efficiency = %f percent",nm*100)