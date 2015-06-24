//static pressure//
pathname=get_absolute_file_path('9.01.sce')
filename=pathname+filesep()+'9.01-data.sci'
exec(filename)
//Change in static pressure between sections 1 and 2:
C=(((L-2*d1)/(L-2*d2))^4-1)*100;
printf("\n\nRESULTS\n\n")
printf("\n\nChange in static pressure between the sections 1 and 2: %.3f percent \n\n",C)
