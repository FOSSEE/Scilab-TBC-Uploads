//flow//
pathname=get_absolute_file_path('06.05.sce')
filename=pathname+filesep()+'06.05-data.sci'
exec(filename)
//Velocity of flow at the exit(in ft/sec):
V2=sqrt(2*g*(Du-Dd/12))
//Volume flow rate/width(ft^2/sec):
Q=V2*Dd/12
printf("\n\nRESULTS\n\n")
printf("\n\nVelocity of flow at the exit: %.3f ft/sec\n\n",V2)
printf("\n\nVolume flow rate/width: %.3f ft^2/sec\n\n",Q)
