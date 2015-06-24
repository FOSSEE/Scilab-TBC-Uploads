//pathname=get_absolute_file_path('11.02.sce')
//filename=pathname+filesep()+'11.02-data.sci'
//exec(filename)
//Mass per kg of fuel required for complete combustion(in kg):
m=18
//Height in the water column(in mm):
hw=20
//Ambient air temperature(in K):
Ta=27+273
//Temperature of burnt gases(in K):
Tg=300+273
//Height of chimney(in m):
H=hw/(353*(1/Ta-(m+1)/(m*Tg)))
printf("\n RESULT \n")
printf("\nHeight of chimney = %f m",H)