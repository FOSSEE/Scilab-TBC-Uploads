pathname=get_absolute_file_path('3_17.sce')
filename=pathname+filesep()+'3_17_data.sci'
exec(filename)
//Temperature at the end of compression stroke(in K)
T2=r^((Cp/Cv)-1)*T1
//Temperature at he start of expansion stroke(in K)
T3=CV/(AF*Cp)+T2
//Cutoff ratio
rc=T3/T2
//Efficiency of diesel cycle
n=1-(1/(y*r^(y-1))*(((rc^y)-1)/(rc-1)))
printf("\n\nRESULTS\n\n")
printf("\nEfficiency of diesel cycle:%f\n",n*100)