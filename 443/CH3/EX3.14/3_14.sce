pathname=get_absolute_file_path('3_14.sce')
filename=pathname+filesep()+'3_14_data.sci'
exec(filename)
//Air standard efficiency of diesel cycle
n=1-((1/(r^(y-1)*y))*(((r/re)^y-1)/(((r/re)-1))))
printf("\n\nRESULTS\n\n")
printf("\nEfficiency of diesel engine:%f\n",n*100)