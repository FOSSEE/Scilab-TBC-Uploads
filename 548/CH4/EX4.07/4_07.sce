pathname=get_absolute_file_path('4_07.sce')
filename=pathname+filesep()+'4_07data.sci'
exec(filename)
disp("P2/P1=(T2/T1)^y/y-1","For isentropic flow","let P2 be the pressure at that point of wing");
P2=P1*(T/T1)^(y/(y-1));disp(P2,"P2=")
printf("\Answer:\n")
printf("\n\Pressure at this point: %f N/m^2\n\n",P2)
