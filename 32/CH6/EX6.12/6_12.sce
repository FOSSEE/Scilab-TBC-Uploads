//pathname=get_absolute_file_path('6.12.sce')
//filename=pathname+filesep()+'6.12-data.sci'
//exec(filename)
//Volume occupied by water(in m^3):
V1=3/5*2
//Volume occupied by steam(in m^3):
V2=2/5*2
//From steam table
vf = 0.001091 //(m^3/kg) 
vg = 0.3928 //(m^3/kg)
//Mass of water(in kg):
mf=V1/vf
//Mass of steam(in kg):
mg=V2/vg
//Total mass(in kg):
mt=mf+mg
//Dryness fraction:
x=mg/mt
printf("\nRESULT\n")
printf("\nMass = %f kg",mt)
printf("\nQuality = %f",x)