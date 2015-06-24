pathname=get_absolute_file_path('8_02.sce')
filename=pathname+filesep()+'8_02data.sci'
exec(filename)
T2=T1*(a2/a1)^1.5;
disp(T2,"T2=","T2=T1*(a2/a1)^1.5","period of mars T2 from keplers third law:")
printf("\Answer:\n")
printf("\n\Period of mars: %f days\n\n",T2)
