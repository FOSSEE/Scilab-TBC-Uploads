//pathname=get_absolute_file_path('6.15.sce')
//filename=pathname+filesep()+'6.15-data.sci'
//exec(filename)
//Recorded condenser vacuum:
r= 71.5 //cm of Mercury
//Barometer reading: 
br= 76.8 //cm of Mercury
//Temperature of condensation:
Tc= 35 //°C
//Temperature of hot well:
Thw= 27.6 //°C
//Mass of condensate per hour:
mc= 1930 //kg
//Mass of cooling water per hour:
mcw= 62000 //kg
//Inlet temperature 
Ti= 8.51 //°C
//Outlet temperature:
To= 26.24 //°C
//From steam tables:
hf = 146.68 //kJ/kg
hfg = 2418.6 //kJ/kg
//Condensor pressure(in kPa):
pc=(br-r)/73.55*101.325
//Partial pressure of steam corresponding to 35°C from steam table(in kPa):
ps= 5.628 
//Dryness fraction:
x=(mcw*(To-Ti)*4.18-mc*hf+mc*4.18*To)/(mc*hfg)
printf("\nRESULT\n")
printf("\nDryness fraction of the steam entering = %f",x)