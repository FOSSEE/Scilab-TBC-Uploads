clc;
pathname=get_absolute_file_path('3_16_soln.sce')
filename=pathname+filesep()+'3_16_data.sci'
exec(filename)

// Solution:
// Power(kW)=(Torque*Speed)/9550
// Therefore,Torque
T=(OP*9550)/N; //Nm
   
// Results:
printf("\n  Results:  ")  
printf("\n The Torque delivered by Hydraulic motor is %.1f Nm.",T)