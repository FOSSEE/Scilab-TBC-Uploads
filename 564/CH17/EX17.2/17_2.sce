pathname=get_absolute_file_path('17_2.sce')
filename=pathname+filesep()+'17_2data.sci'
exec(filename)
Es=(3*b*b)/(h*(1+ 6*b/h));
printf("\nξs: %f mm",Es);