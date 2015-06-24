pathname=get_absolute_file_path('3_11.sce')
filename=pathname+filesep()+'3_11_data.sci'
exec(filename)
//Cutoff ratio
rc=(x*(r-1)+1)
//Air standard efficiency
nas=1-((1/(r^(y-1)))*((rc^y-1)/(y*(rc-1))))
printf("\n\nRESULTS\n\n")
printf("\nAir standard efficiency:%f\n",nas*100)