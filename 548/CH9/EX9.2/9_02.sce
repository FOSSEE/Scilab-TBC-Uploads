pathname=get_absolute_file_path('9_02.sce')
filename=pathname+filesep()+'9_02data.sci'
exec(filename)
Pe=Pa*120/(n*Nmech*rpm*d);
disp(Pe,"Pe=","Pe=Pa*120/(n*Nmech*rpm*d)","mean effective pressure Pe:")
printf("\Answer:\n")
printf("\n\Mean effective pressure : %f N/m^2\n\n",Pe)
