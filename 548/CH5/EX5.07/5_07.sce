pathname=get_absolute_file_path('5_07.sce')
filename=pathname+filesep()+'5_07data.sci'
exec(filename)
V2=V*((Cp1-Cp2)+(V1/V)^2)^0.5;
disp(V2,"V2=","V2=V*((Cp1-Cp2)+(V1/V)^2)^0.5","velocity at point 2 V2:")
printf("\Answer:\n")
printf("\n\Velocity at point 2: %f m/s\n\n",V2)