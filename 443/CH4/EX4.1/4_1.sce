pathname=get_absolute_file_path('4_1.sce')
filename=pathname+filesep()+'4_1_data.sci'
exec(filename)
//Change in efficiency with respect to efficiency
//z=dn/n
n=1-((1/r)^(y-1))
z=-((1-n)*(y-1)*log(8)*(dCv))/n
printf("\n\nRESULTS\n\n")
printf("\nThe effect of efficiency on Otto cycle is %f",z*100)