pathname=get_absolute_file_path('1.1.sce')
filename=pathname+filesep()+'1.1-data.sci'
exec(filename)
//bore diameter(in cm):
d=(4*Vs*Ro/%pi)^(1/3)
//length(in cm):
l=d/Ro
//compression ratio:
R=(Vs+Vc)/Vc
printf("\n\nRESULTS\n\n")
printf("\nbore:%f\n",d)
printf("\nstroke:%f\n",l)
printf("\ncompression ratio:%f\n",R)