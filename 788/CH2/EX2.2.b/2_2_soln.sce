clc;
pathname=get_absolute_file_path('2_2_soln.sce')
filename=pathname+filesep()+'2_2_data.sci'
exec(filename)

// Solution:
// we know specific weight,
// gamma=(Weigth of the Body/Volume of the Body)
gamma1=(W/V); //lb/ft^3
// rounding off the above answer
gamma1=fix(gamma1)+(fix((gamma1-fix(gamma1))*10)/10); //lb/ft^3
   
// Results:
printf("\n  Results:  ")
printf("\n The specific weight of Body is %.1f lb/ft^3.",gamma1)
