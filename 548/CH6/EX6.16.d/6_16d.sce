pathname=get_absolute_file_path('6_16d.sce')
filename=pathname+filesep()+'6_16d_data.sci'
exec(filename)
Z=1+sqrt(1+(3/((L_Dmax)^2*(2*Tf/W)^2)))
R_Cmax=sqrt(W*Z/(3*D*Cdo*S))*(2*Tf/W)^1.5*[1-(Z/6)-(1.5/(Z*(2*Tf/W)^2*(L_Dmax)^2))]
printf("\Answer:\n")
printf("\n\Maximum Rate of Climb for CJ-1: %f m/s\n\n",R_Cmax)