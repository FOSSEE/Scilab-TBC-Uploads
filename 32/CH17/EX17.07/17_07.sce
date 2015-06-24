//pathname=get_absolute_file_path('17.07.sce')
//filename=pathname+filesep()+'17.07-data.sci'
//exec(filename)
//Friction power(in kW):
FP=5
//Rpm:
N=3000
//Bore(in m):
D=0.20
//Stroke(in m):
L=0.30
//Fuel supplied at rate(in kg/min):
m=0.15
//Load(in kg):
F=20
//Radius(in m):
r=0.5
//Calorific value of fuel(in kJ/kg):
C=43000
//Acceleration due to gravity(in m/s^2):
g=9.81
//Brake power(in kW):
BP=2*%pi*N*(F*g*r*10^(-3))/60
//Indicated power(in kW):
IP=BP+FP
//Mechanical efficiency:
nm=BP/IP
//BSFC(in kg/kW.hr):
BSFC=m*60/BP
//Brake thermal efficiency:
nbth=3600/(BSFC*C)*100
//Indicated thermal efficiency:
nith=nbth/nm
//Indicated mep(in kPa):
Pimep=IP/(L*(%pi*D^2/4)*N/60)
//Brake mep(in kPa):
Pbmep=Pimep*nm
printf("\n RESULT \n")
printf("\nBrake power = %f W",BP)
printf("\nIndicated power = %f kW",IP)
printf("\nMechanical efficiency = %f percent",nm*100)
printf("\nBrake thermal efficiency = %f percent",nbth)
printf("\nIndicated thermal efficiency = %f percent",nith)
printf("\nBrake mean effective pressure = %f kPa",Pbmep)
printf("\nIndicated mean effective pressure = %f kPa",Pimep)