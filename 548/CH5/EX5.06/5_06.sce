pathname=get_absolute_file_path('5_06.sce')
filename=pathname+filesep()+'5_06data.sci'
exec(filename)
P1=(q*Cp)+P;disp(P1,"P1=","P1=q*Cp+p","pressure at this point P1:")
printf("\Answer:\n")
printf("\n\pressure at this point : %f N/m^2\n\n",P1)