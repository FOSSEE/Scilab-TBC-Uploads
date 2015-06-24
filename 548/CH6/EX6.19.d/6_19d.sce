pathname=get_absolute_file_path('6_19d.sce')
filename=pathname+filesep()+'6_19data.sci'
exec(filename)
E=(n/(4*c*Cdo))*(3*Cdo*%pi*e*AR)^(3/4)*sqrt(2*D*S)*[1/sqrt(W-W1)-1/sqrt(Wo)]
printf("\Answer:\n")
printf("\n\Maximum Endurance at sea level: %f s\n\n",E)