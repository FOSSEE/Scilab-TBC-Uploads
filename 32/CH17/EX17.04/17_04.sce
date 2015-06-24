//pathname=get_absolute_file_path('17.04.sce')
//filename=pathname+filesep()+'17.04-data.sci'
//exec(filename)
//Specific fuel consumption(in kg/kW.h):
m1=0.25
//Brake mean effective pressure(in kPa):
pbmep=1.5*10^3
//Speed of engine(in rpm):
N=100
//Bore of cylinder(in m):
D=0.85
//Stroke(in m):
L=2.20
//Calorific value of diesel(in kJ/kg):
C=43*10^3
//Brake power of engine(in kW):
BP=pbmep*L*(%pi*D^2/4)*N/60
printf("\n RESULT \n")
printf("\nBrake power = %f MW",BP/100)
//Fuel consumption(in kg/hr):
m=m1*BP
//Heat from fuel(in kJ/s):
q=m*C/3600
//Brake thermal efficiency:
nb=BP/q*100
printf("\nFuel consumption rate = %f kg/hr",m)
printf("\nBrake thermal efficiency = %f percent",nb) 