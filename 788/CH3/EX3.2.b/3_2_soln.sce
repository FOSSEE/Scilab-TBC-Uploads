clc;
pathname=get_absolute_file_path('3_2_soln.sce')
filename=pathname+filesep()+'3_2_data.sci'
exec(filename)

// Solution:
// Power (HP)=(Torque*Speed)/63000
// Therefore,Torque
T=(HP*63000)/N; //in.lb
   
// Results:
printf("\n  Results:  ")  
printf("\n The Torque delivered by Hydraulic motor is %.1f in.lb",T)
