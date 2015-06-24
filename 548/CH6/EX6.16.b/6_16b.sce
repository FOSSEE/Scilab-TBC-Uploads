pathname=get_absolute_file_path('6_16b.sce')
filename=pathname+filesep()+'6_16b_data.sci'
exec(filename)
R_Cmax=(Pf*P*746/W)-0.8776*sqrt(W/(D*S*Cdo))*(1/(L_Dmax)^1.5)//(R/C)max
printf("\Answer:\n")
printf("\n\Maximum Rate of climd for CP-1: %f m/s\n\n",R_Cmax)