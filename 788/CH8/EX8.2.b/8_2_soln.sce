clc;
pathname=get_absolute_file_path('8_2_soln.sce')
filename=pathname+filesep()+'8_2_data.sci'
exec(filename)

// Solution:
// Horsepower across the valve,
HP=((p*Q)/1714); //HP
 
// Results:
printf("\n  Results:  ")   
printf("\n The Horsepower across the pressure relief valve is %.1f HP.",HP)









