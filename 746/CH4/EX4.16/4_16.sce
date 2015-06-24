//Rate of heat//
pathname=get_absolute_file_path('4.16.sce')
filename=pathname+filesep()+'4.16-data.sci'
exec(filename)
//Velocity at exit(in ft/sec):
V2=m*R*(T2+460)/A2/p2/144
//As power input is to CV, Ws=-600
//Rate of heat transfer(in Btu/sec):
Q=Ws*550/778+m*cp*(T2-T1)+m*V2^2/2/32.2/778
printf("\n\nRESULTS\n\n")
printf("\n\nRate of heat transfer: %.3f Btu/sec\n\n",Q)
