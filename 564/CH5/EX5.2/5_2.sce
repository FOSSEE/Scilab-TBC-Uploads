pathname=get_absolute_file_path('5_2.sce')
filename=pathname+filesep()+'5_2data.sci'
exec(filename)
delB=(119*w*L^4)/(24576*EI);
delC=(5*w*L^4)/(384*EI);
printf("\ndelB: %f m",delB);
printf("\ndelC: %f m",delC);