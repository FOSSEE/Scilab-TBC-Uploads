pathname=get_absolute_file_path('9_03.sce')
filename=pathname+filesep()+'9_03data.sci'
exec(filename)
T=Mdot*(Ve-V)+(Pe-P)*Ae;
disp(T,"T=","T=Mdot*(Ve-V)+(Pe-P)*Ae","Thrust of the turbojet T:")
printf("\Answer:\n")
printf("\n\Mean effective pressure : %f N\n\n",T)
