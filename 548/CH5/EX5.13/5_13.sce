pathname=get_absolute_file_path('5_13.sce')
filename=pathname+filesep()+'5_13data.sci'
exec(filename)
L=q*S*4*a/sqrt(M^2-1);
disp(L,"L=","L=q*S*4*a/sqrt(M^2-1)","Lift exerted on airplane L:")
printf("\Answer:\n")
printf("\n\Lift exerted on airplane: %f N\n\n",L)