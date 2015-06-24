clc;
pathname=get_absolute_file_path('17_2_soln.sce')
filename=pathname+filesep()+'17_2_data.sci'
exec(filename)

// Solutions:
// natural frequency of the oil,
om_H=(A*10^-4)*sqrt((2*beta1*10^6)/(V*10^-6*M)); //rad/s
// value of open-loop gain,
open_loop=om_H/3; ///s
// amplifier gain,
G_A=open_loop/(G_SV*G_cyl*H); //mA/V
// repeatable error,
RE=SD/(G_A*H); //cm
// rounding off the above answer,
RE=fix(RE)+(fix(ceil((RE-fix(RE))*100000))/100000); //cm

// Results:
printf("\n  Results:  ")
printf("\n The repeatable error of system is %.5f cm.",RE)