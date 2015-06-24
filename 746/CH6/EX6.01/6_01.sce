//Volume flow rate//
pathname=get_absolute_file_path('06.01.sce')
filename=pathname+filesep()+'06.01-data.sci'
exec(filename)
//Velocity of flow(in m/sec):
V=sqrt(dw/log((r+w)/r)*g/da*p/1000)
//Volume flow rate(in m^3/sec):
Q=V*(d*w)
printf("\n\nRESULTS\n\n")
printf("\n\nVolume flow rate: %.3f m^3/sec\n\n",Q)
