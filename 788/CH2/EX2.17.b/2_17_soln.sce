clc;
pathname=get_absolute_file_path('2_17_soln.sce')
filename=pathname+filesep()+'2_17_data.sci'
exec(filename)

// Solution:
// Change in pressure,
delP=P2-P1; //kPa 
betaa=betaa*1000; //kPA
// % Change in volume,
delV=-(delP/betaa)*100; //% ,- sign indicates oil is being compressed

// Results:
printf("\n  Results:  ")
printf("\n The Percentage change in volume of oil is %.3f.",delV)

