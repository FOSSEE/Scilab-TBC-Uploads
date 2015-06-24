//pathname=get_absolute_file_path('11.01.sce')
//filename=pathname+filesep()+'11.01-data.sci'
//exec(filename)
//Height of chimney(in m):
H=30
//Ambient air temperature(in K):
Ta=27+273
//Mass per kg of fuel required for complete combustion(in kg):
m=20
//Height in the water column(in mm):
hw=12
//Temperature of burnt gases(in K):
Tg=(Ta*353*H)/(353*H-hw*Ta)*(m)/(m+1)
printf("\n RESULT \n")
printf("\nTemperature of the burnt gases = %f K",Tg)