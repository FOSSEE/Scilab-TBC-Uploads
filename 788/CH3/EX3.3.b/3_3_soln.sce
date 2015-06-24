clc;
pathname=get_absolute_file_path('3_3_soln.sce')
filename=pathname+filesep()+'3_3_data.sci'
exec(filename)

// Solution:
// we know,output power=(Force * Displacement)/time,
outpw=(F*S)/t; //ft.lb/s
outpw_HP=outpw/550; //HP
// Efficiency=output power/input power
inpw=outpw_HP/(eta*0.01); //HP
   
// Results:
printf("\n  Results:  ")    
printf("\n The Input Horsepower required by elevator hoist motor is %.1f HP",inpw)
