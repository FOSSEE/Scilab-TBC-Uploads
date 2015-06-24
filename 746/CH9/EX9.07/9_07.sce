//Time required//
pathname=get_absolute_file_path('9.07.sce')
filename=pathname+filesep()+'9.07-data.sci'
exec(filename)
//Time required to decelerate to 100 mph(in seconds):
t=(s1-s2)*2*w/(s1*s2)/Cd/d/A/g*3600/5280
printf("\n\nRESULTS\n\n")
printf("\n\nTime required to decelerate to 100 mph: %.3f seconds\n\n",t)
