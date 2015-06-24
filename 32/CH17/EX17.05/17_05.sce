//pathname=get_absolute_file_path('17.05.sce')
//filename=pathname+filesep()+'17.05-data.sci'
//exec(filename)
//Effective pressure(in kPa):
pb=6*10^2
//Speed:
N=600
//Specific fuel consumption(in kg/kW.h)
m1=0.25
//BOre(in m):
D=0.20
//Stroke length(in m):
L=0.30
//Air fuel ratio:
r=26
//Calorific value(in kJ/kg):
C=43*10^3
//Gas constant(in kJ/kg.K):
R=0.287
//Ambient conditions:
p=1*10^2 //kPa
T=300 //K
//Brake thermal efficiency:
nb=3600/(m1*C)*100
printf("\n RESULT \n")
printf("\nBrake thermal efficiency = %f percent",nb)
//Brake power(in kW):
BP=4*pb*L*(%pi*D^2/4)*N/60
printf("\nBrake power = %f kW",BP)
//Air consumption rate(in kg/min):
ma=m1*BP*r/60
//Volume(in m^3/min):
Va=ma*R*T/p
//Swept volume(in m^3):
Vs=%pi*(0.3)^2*0.4/4
//Volumetric efficiency:
nv=Va/(Vs*N/2*4)*100
printf("\nVolumetric efficiency = %f percent",nv)