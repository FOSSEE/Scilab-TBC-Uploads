//pathname=get_absolute_file_path('3.20.sce')
//filename=pathname+filesep()+'3.20-data.sci'
//exec(filename)
//Volume of the bottle(in m^3):
v=0.5
//Pressure in the bottle(in Bar):
p=1.0135
//Displacement work(in N-m):
W=p*10^5*(0-v)
//Heat transfer(in N-m):
Q=-W
printf("\nRESULT\n")
printf("\nHeat transferred = %d N-m",Q)