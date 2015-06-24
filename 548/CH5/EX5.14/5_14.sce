pathname=get_absolute_file_path('5_14.sce')
filename=pathname+filesep()+'5_14data.sci'
exec(filename)
Cl=L/(q*S);
disp(Cl,"Cl=","Cl=L/(q*S)","Lift coefficient Cl:")
printf("\Answer:\n")
printf("\n\Lift coefficient: %f \n\n",Cl)