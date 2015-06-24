clc;
pathname=get_absolute_file_path('7_5_soln.sce')
filename=pathname+filesep()+'7_5_data.sci'
exec(filename)

// Solution:
// motor speed,
N=(Q_T*60)/(V_D*10^-3); //rpm
// Theoretical torque,
T_T=((V_D*10^-3)*(p*10^5))/(2*%pi); //Nm
// Theoretical power,
HP_T=T_T*N*2*%pi/(60*1000); //kW

// Results:
printf("\n  Results:  ")   
printf("\n The motor Speed is %.0f rpm.",N)
printf("\n The motor Theoretical torque is %.1f Nm.",T_T)
printf("\n The motor Theoretical power is %.2f kW.",HP_T)

