//pathname=get_absolute_file_path('6.09.sce')
//filename=pathname+filesep()+'6.09-data.sci'
//exec(filename)
//Initial State:
//Pressure(in MPa):
p1=1
//Volume(in m^3):
V1=0.05
//Dryness fraction:
x1=0.80
//Final state:
//Pressure(in MPa):
p2=1
//Volume(in m^3):
V2=0.2
//From steam table:(at state 1):
vf = 0.001127 //(m3/kg)
vg = 0.19444 //(m3/kg)
uf = 761.68 //(kJ/kg)
ufg = 1822 //(kJ/kg)
//Work done(in kJ):
W=p1*10^3*(V2-V1)
//Specific volume at state 1(in m^3/kg):
v1=vf+x1*(vg-vf)
//Mass of system(in kg):
m=V1/v1
//Specific volume at state 2(in m^3/kg):
v2=V2/m
//Temperature at final state(in °C):
Tf=1077.61
//Internal energy at final state(at 1077.61 °C):
u2=4209.6
//Internal energy at initial state(in kJ/kg):
u1=uf+x1*ufg
//Heat added(in kJ):
Q=m*(u2-u1)+W
printf("\nRESULT\n")
printf("\nHeat added = %f kJ",Q)