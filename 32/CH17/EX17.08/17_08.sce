//pathname=get_absolute_file_path('17.08.sce')
//filename=pathname+filesep()+'17.08-data.sci'
//exec(filename)
//Speed(in rpm):
N=300
//Brake power(in kW):
BP=250
//Bore diameter(in m):
D=0.30
//Stroke length(in m):
L=0.25
//Fuel consumption rate(in kg/min):
m=1
//Air fuel ratio:
r=10
//Calorific value of fuel(in kJ/kg):
C=43000
//Indicated mep(in kPa):
Pimep=0.8*10^3
//Gas constant(in kJ/kg.K):
R=0.287
//Indicated power(in kW):
IP=Pimep*L*(%pi*D^2/4)*N*4/60
//Mechanical efficiency:
nm=BP/IP
//BSFC(in kg/kW.hr):
BSFC=m*60/BP
//Brake thermal efficiency:
nbth=3600/(BSFC*C)*100
//Swept volume(in m^3):
Vs=%pi*D^2*L/4
//Mass of air(in kg):
ma=(1.013*10^2*Vs)/(R*300)
//Volumetric efficiency:
nv=m*r/(ma*4*N/2)*100
printf("\n RESULT \n")
printf("\nIndicated power = %f kW",IP)
printf("\nMechanical efficiency = %f percent",nm*100)
printf("\nBrake thermal efficiency = %f percent",nbth)
printf("\nVolumetric efficiency = %f percent",nv)