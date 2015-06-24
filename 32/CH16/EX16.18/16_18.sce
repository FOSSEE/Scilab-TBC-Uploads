//pathname=get_absolute_file_path('16.18.sce')
//filename=pathname+filesep()+'16.18-data.sci'
//exec(filename)
//Piston displacement per revolution(in m^3/rev):
V=0.015
//Speed(in rpm):
N=500
//Clearance:
C=0.05
//Pressures(in bar):
p2=6
p1=1
//Index of compression:
n=1.3
//Gas constant(in kJ/kg.K):
R=0.287
//Temperature(in K):
T1=20+273
//Adiabatic index of compression:
r=1.4
//Value of Cv(in kJ/kg.K):
Cv=0.718
//Volumetric efficiency:
nv=1+C-C*(p2/p1)^(1/n)
printf("\n RESULT \n")
printf("\nVolumetric efficiency = %f percent",nv*100)
//Swept volume(in m^3/min):
Vs=V*2*N
//Actual air inhaled(in m^3/min):
V1=Vs*0.85
//Mass of air entering(in kg/min):
m=p1*10^2*V1/(R*T1)
//Power required(in kJ/min):
P=n/(n-1)*p1*10^2*V1*((p2/p1)^((n-1)/n)-1)
printf("\nPower required = %f kJ/min",P)
//Temperature at state 2(in K):
T2=298*(p2/p1)^((n-1)/n)
//Heat transferred during compression(in kJ/min):
Q=m*Cv*(r-n)/(n-1)*(T2-T1)
printf("\nHeat rejected during compression = %f kJ/min",Q) 