pathname=get_absolute_file_path('5_18.sce')
filename=pathname+filesep()+'5_18data.sci'
exec(filename)
Di=q*S*Cdi;disp(Di,"Di=","Di=q*S*Cdi","induced drag on one wing Di:")
printf("\Answer:\n")
printf("\n\Induced drag exerted on both the wings: %f N\n\n",2*Di)
