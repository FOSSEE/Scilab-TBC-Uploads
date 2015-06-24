//pathname=get_absolute_file_path('6.19.sce')
//filename=pathname+filesep()+'6.19-data.sci'
//exec(filename)
//Mass of wet steam(in kg):
m=3
//Initial pressure(in bar):
p1=1.4
//Initial volume(in m^3):
V1=2.25
//Final temperature of steam(in °C):
T=400
//At 400°C,volume of steam(in m^3):
V2=4.65
//From steam tables:
vg=1.2455
hf=457.99
hfg=2232.3
h2=3276.6
uf=457.84
ufg=2059.34
u2=2966.7
//Specific volume of wer steam in cylinder(in m^3/kg):
v1=V1/m
//Dryness fraction of initial steam:
x1=v1/vg
//Initial enthalpy of wet steam(in kJ/kg):
h1=hf+x1*hfg
//At 400°C specific volume of steam(in m^3/kg):
v2=V2/m
//Actual pressure(from steam table)(in MPa):
p2=0.20
//Saturation temp at this pressure = 120.23°C
//Finally the degree of superheat(in °C):
ds=T-120.23
//Heat added during the process(in kJ):
Q=m*(h2-h1)
//Internal energy of initial wet steam(in kJ/kg):
u1=uf+x1*ufg
//Change in internal energy(in kJ):
dU=m*(u2-u1)
//Work done(in kJ):
W=Q-dU
printf("\nRESULT\n")
printf("\nHeat transfer = %f kJ",Q)
printf("\nWork transfer = %f kJ",W)