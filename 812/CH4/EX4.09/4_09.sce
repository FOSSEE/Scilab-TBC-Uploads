//pressure required//
pathname=get_absolute_file_path('4.09.sce')
filename=pathname+filesep()+'4.09-data.sci'
exec(filename)
//Minimum gauge pressure required(in lbf/in^2):
pg=8/%pi^2*d/D1^4*Q^2*((D1/D2)^4-1)*144
printf("\n\nRESULTS\n\n")
printf("Minimum gauge pressure required: %.3f lbf/in^2",pg)
