pathname=get_absolute_file_path('3_15.sce')
filename=pathname+filesep()+'3_15_data.sci'
exec(filename)
//Efficiency of diesel cycle
n=1-((1/(r^(y-1)*y))*(((rc^y)-1)/((rc-1))))
printf("\n\nRESULTS\n\n")
printf("\nEfficiency of diesel engine:%f\n",n*100)