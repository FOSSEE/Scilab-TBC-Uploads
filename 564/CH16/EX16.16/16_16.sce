pathname=get_absolute_file_path('16_16.sce')
filename=pathname+filesep()+'16_16data.sci'
exec(filename)
Nt=4*E*alpha*a*t*T0;
Mxt=(8/3)*E*alpha*t*T0*a^2;
Myt=-E*alpha*t*T0*a^2;
printf("\nNt: %f ",Nt);
printf("\nMxt: %f ",Mxt);
printf("\nMyt: %f ",Myt);