clc;
pathname=get_absolute_file_path('14_6_soln.sce')
filename=pathname+filesep()+'14_6_data.sci'
exec(filename)

// Solutions:
// time required to achieve the desired vacuum pressure,
t=(V/Q)*log(p_atm/p_vacuum); //min
// time required to achieve perfect vacuum pressure,
t1=(V/Q)*log(p_atm/0.5); //min

// Results:
printf("\n  Results:  ")
printf("\n The time required to achieve the desired vacuum pressure is %.2f min.",t)
printf("\n The time required to achieve perfect vacuum pressure is %.2f min.",t1)


