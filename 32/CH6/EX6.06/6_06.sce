//pathname=get_absolute_file_path('6.06.sce')
//filename=pathname+filesep()+'6.06-data.sci'
//exec(filename)
//Temperature of the water vapor mixture(in °C):
T=100
//Volume of the rigid vessel(in m^3):
V=0.5
//From steam tables:
//Specific volume at state 2(in m^3/kg):
v2=0.003155
vf=0.001044
vg=1.6729
//Specific volume at state 1(in m^3/kg):
v1=v2
//Dryness fraction:
x1=(v1-vf)/vg
//Total mass of fluid(in kg):
m=V/v2
//Volume of water(in m^3):
v=m*vf
printf("\nRESULT\n")
printf("\nMass of water = %f kg",m)
printf("\nVolume of water = %f m^3",v)