//pathname=get_absolute_file_path('6.16.sce')
//filename=pathname+filesep()+'6.16-data.sci'
//exec(filename)
//Diameter of the vessel(in m):
D=0.2
//Depth(in m):
d=0.02
//Temperature(in °C):
T=150
//Force applied(in kN):
F=10
//Heat supplied(in kJ):
Q=600
//From steam tables:
hf=612.1
hfg=2128.7
vg=0.4435
h2=1582.8
//Pressure at which process is taking place(in kPa):
p=F/(%pi*D^2)*4+101.3
//Volume of water contained(in m^3):
V1=%pi*D^2*d/4
//Mass of water(in kg):
m=V1*1000
//Dryness fraction:
x=(Q-hf*m+4.18*T*m)/(hfg*m)
//Internal energy of water initially(in kJ):
U1=m*4.18*T-p*V1
//Final volume(in m^3):
V2=m*x*vg
//Internal energy at state 2(in kJ):
U2=m*h2-p*V2
//Change in internal energy(in kJ):
dU=U2-U1
//Work done(in kJ):
W=p*(V2-V1)
printf("\nRESULT\n")
printf("\nDryness fraction of the steam produced = %f",x)
printf("\nChange in internal energy = %f kJ",dU)
printf("\nWork done = %f kJ",W)