pathname=get_absolute_file_path('4_13.sce')
filename=pathname+filesep()+'4_13data.sci'
exec(filename)
disp("(2(P1-P2)/(D1(1-(A2/A1)^2)))^0.5=(2*(Dp)/(D1*(1-r^2)))^0.5","Airflow velocity at test section V=");
V=(2*(Dp)/(D1*(1-r^2)))^0.5;disp(V,"V=");
printf("\Answer:\n")
printf("\n\Airflow velocity in the test section: %f m/s\n\n",V)
