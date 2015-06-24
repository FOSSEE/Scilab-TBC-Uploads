pathname=get_absolute_file_path('4_03.sce')
filename=pathname+filesep()+'4_03data.sci'
exec(filename)
disp("P1+(D*V1^2/2)=Pa+(D*Va^2/2)","Bernoulli equation");
Va=[(2*(P1-Pa)/D)+(V1)^2]^0.5;disp(Va,"Va=")
printf("\Answer:\n")
printf("\n\velocity at a point A on airfoil: %f m/s\n\n",Va)

