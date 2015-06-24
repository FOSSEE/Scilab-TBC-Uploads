pathname=get_absolute_file_path('5_09.sce')
filename=pathname+filesep()+'5_09data.sci'
exec(filename)
Cl=Co/(sqrt(1-M^2));disp(Cl,"Cl=","Cl=Co/(sqrt(1-M^2))","Lift coefficient Cl :")
printf("\Answer:\n")
printf("\n\Lift coefficient at Mach 0.7: %f \n\n",Cl)