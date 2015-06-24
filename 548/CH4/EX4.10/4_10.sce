pathname=get_absolute_file_path('4_10.sce')
filename=pathname+filesep()+'4_10data.sci'
exec(filename)
disp("So Va^2=2Cp*(T-Ta)+V^2","CpT+(V^2)/2=CpTa+(Va^2)/2","From energy equation:","let Va be the velocity of the point A")
Va=(2*Cp*(T-Ta)+V^2)^0.5;disp(Va,"Va=")
printf("\Answer:\n")
printf("\n\Velocity at point A: %f m/s\n\n",Va)
