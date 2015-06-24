pathname=get_absolute_file_path('4_18.sce')
filename=pathname+filesep()+'4_18data.sci'
exec(filename)
Po=P*[(y+1)^2*M^2/((4*y*M^2)-2*(y-1))]^3.5*(1-y+2*y*M^2)/(y+1)
disp("Po=P1*[(y+1)^2*M^2/((4*y*M^2)-2*(y-1))]^3.5*(1-y+2*y*M^2)/(y+1)","pressure measured by pitot tube Po")
printf("\Answer:\n")
printf("\n\pressure measured by pitot tube: %f N/m^2\n\n",Po)
