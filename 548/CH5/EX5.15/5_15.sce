pathname=get_absolute_file_path('5_15.sce')
filename=pathname+filesep()+'5_15data.sci'
exec(filename)
Cdi=Cl^2/(%pi*e*AR);disp(Cdi,"Cdi=","Cdi=Cl^2/(%pi*e*AR)","induced drag coefficient Cdi:")
Di=q*S*Cdi;disp(Di,"Di=","Di=q*S*Cdi","induced drag Di:")
printf("\Answer:\n")
printf("\n\induced drag coefficient: %f \n\n",Cdi)
printf("\n\induced drag: %f N\n\n",Di)