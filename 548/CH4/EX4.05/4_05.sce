pathname=get_absolute_file_path('4_05.sce')
filename=pathname+filesep()+'4_05data.sci'
exec(filename)
D=1.067*D*V^2*R;
printf("\Answer:\n")
printf("\n\Aerodynamic force exerted by surface pressure distribution: %f N\n\n",D)
