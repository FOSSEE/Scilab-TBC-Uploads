pathname=get_absolute_file_path('6_16c.sce')
filename=pathname+filesep()+'6_16c_data.sci'
exec(filename)
A=2*Tf/W;B=W/S;C=1/L_Dmax^2;E=sqrt(A^2-C)
Vmax=sqrt((A*B+B*E)/(D*Cdo))
printf("\Answer:\n")
printf("\n\Maximum Velocity for CJ-1: %f m/s\n\n",Vmax)