pathname=get_absolute_file_path('1_7.sce')
filename=pathname+filesep()+'1_7_data.sci'
exec(filename)
//mean piston speed of engine2
sp2=(d)^2*(sp1/ip1)*ip2
printf("\n\nRESULTS\n\n")
printf("mean piston speed of engine2=mean piston speed of engine1 ie.%f\",sp2)
