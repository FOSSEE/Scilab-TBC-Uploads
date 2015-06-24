clc;
pathname=get_absolute_file_path('2_11_soln.sce')
filename=pathname+filesep()+'2_11_data.sci'
exec(filename)

// Solution:
// Change in pressure,
delP=P2-P1; //psi
// Change in volume,
delV=-((V*delP)/betaa); //in^3 ,- sign indicates oil is being compressed

// Results:
printf("\n  Results:  ")
printf("\n The change in volume of oil is %.3f in^3.",delV)

