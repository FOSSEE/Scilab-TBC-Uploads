clc;
pathname=get_absolute_file_path('17_3_soln.sce')
filename=pathname+filesep()+'17_3_data.sci'
exec(filename)

// Solutions:
// tracking error,
TE=I/(G_A*H); //in
// tracking error,
TE1=I/(G_A*H1); //cm

// Results:
printf("\n  Results:  ")
printf("\n The tracking error of system is %.3f in.",TE)
printf("\n The tracking error of system in SI Unit is %.3f cm.",TE1)