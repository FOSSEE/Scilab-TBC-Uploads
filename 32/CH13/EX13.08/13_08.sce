//pathname=get_absolute_file_path('13.08.sce')
//filename=pathname+filesep()+'13.08-data.sci'
//exec(filename)
//Pressure at which steam enters(in bar):
p1=13
//Pressure at which steam leaves(in bar):
p2=6
//Temperature of steam entering(in K):
T1=150+273
//Adibatic insex of compression:
r=1.4
//Final temperature of steam(in K):
T2=T1*(p2/p1)^((r-1)/r)
//Exit velocity(in m/s):
C2=sqrt(2*1.005*(T1-T2))
printf("\nRESULT\n")
printf("\nExit velocity = %f m/s",C2)