pathname=get_absolute_file_path('4_11.sce')
filename=pathname+filesep()+'4_11data.sci'
exec(filename)
disp("Mach No M=V/a");
M=V/a;disp(M,"M=")
printf("\Answer:\n")
printf("\n\Mach No of the jet transport: %f\n\n",M)