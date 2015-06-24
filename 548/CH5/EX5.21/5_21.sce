pathname=get_absolute_file_path('5_21.sce')
filename=pathname+filesep()+'5_21data.sci'
exec(filename)
V=sqrt(2*Wt/(D*S*Clm));disp(V,"V=","V=sqrt(2*Wt/(D*S*Clm))","stalling speed for Boeing 727 V:")
printf("\Answer:\n")
printf("\n\stalling speed for full fuel tank : %f m/s\n\n",V)
disp("stalling speed for lockhead F-104 is a much higher value than the Boeing 727.","comparison with stalling speed for full fuel tank of example 5.20:")