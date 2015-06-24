pathname=get_absolute_file_path('3_13.sce')
filename=pathname+filesep()+'3_13_data.sci'
exec(filename)
//Cutoff ratio
rc=(p2/p1)^(1/y)/re
//Temperature at the end of compression stroke(in K)
T2=T1*(p2/p1)^((y-1)/y)
//Temperature at the start of expansion stroke(in K)
T3=T2*(rc)
//Temperature at the end of expansion stroke(in K)
T4=T3*(1/re)^(y-1)
//Heat added(in kJ/kg)
Ha=Cp*(T3-T2)
//Heat rejected(in kJ/kg)
Hr=Cv*(T4-T1)
//Efficiency
n=(Ha-Hr)/Ha*100
printf("\n\nRESULTS\n\n")
printf("\nHeat added:%f\n",Ha)
printf("\nHeat rejected:%f\n",Hr)
printf("\nEfficiency:%f\n",n)
