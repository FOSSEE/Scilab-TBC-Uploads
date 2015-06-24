clc;
pathname=get_absolute_file_path('7_2_soln.sce')
filename=pathname+filesep()+'7_2_data.sci'
exec(filename)

// Solution:
// motor speed,
N=231*Q_T/V_D; //rpm
// Theoretical torque,
T_T=floor(V_D*p/(2*%pi)); //in.lb
// Theoretical horsepower,
HP_T=T_T*N/63000; //HP

// Results:
printf("\n  Results:  ")   
printf("\n The motor Speed is %.0f rpm.",N)
printf("\n The motor Theoretical torque is %.0f in.lb.",T_T)
printf("\n The motor Theoretical horsepower is %.2f HP.",HP_T)


