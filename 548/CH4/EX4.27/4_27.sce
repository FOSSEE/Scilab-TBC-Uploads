pathname=get_absolute_file_path('4_27.sce')
filename=pathname+filesep()+'4_27data.sci'
exec(filename)
Tw=q*Cf;disp(Tw,"Tw=","Tw=q*Cf","shear stress at point 0.6096 m Tw:");
printf("\Answer:\n")
printf("\n\shear stress at a point 0.6096m downstream of the leading edge: %f m\n\n",Tw)
