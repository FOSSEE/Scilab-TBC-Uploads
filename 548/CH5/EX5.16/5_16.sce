pathname=get_absolute_file_path('5_16.sce')
filename=pathname+filesep()+'5_16data.sci'
exec(filename)
Dt=(Cd+Cdi)*S*(D*V^2/2);disp(Dt,"Dt=","Dt=(Cd+Cdi)*S*q","total drag Di:")
printf("\Answer:\n")
printf("\n\Totl drag: %f N\n\n",Dt)