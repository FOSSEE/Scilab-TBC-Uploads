pathname=get_absolute_file_path('5_17.sce')
filename=pathname+filesep()+'5_17data.sci'
exec(filename)
Cl=a1*(a-a2);disp(Cl,"Cl=","Cl=a1(a-a2)","lift coefficient Cl:")
Cd=cd+Cl^2/(%pi*e*AR);disp(Cd,"Cd=","Cd=cd+Cl^2/(%pi*e*AR)","total drag coefficient Cd=:")
printf("\Answer:\n")
printf("\n\Lift coefficient: %f \n\n",Cl)
printf("\n\Totl drag coefficient: %f \n\n",Cd)