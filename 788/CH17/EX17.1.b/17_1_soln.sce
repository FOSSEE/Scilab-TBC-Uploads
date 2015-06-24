clc;
pathname=get_absolute_file_path('17_1_soln.sce')
filename=pathname+filesep()+'17_1_data.sci'
exec(filename)

// Solutions:
// natural frequency of the oil,
om_H=A*sqrt((2*beta1)/(V*M)); //rad/s
// value of open-loop gain,
open_loop=om_H/3; ///s
// amplifier gain,
G_A=open_loop/(G_SV*G_cyl*H); //mA/V
// repeatable error,
RE=SD/(G_A*H); //in

// Results:
printf("\n  Results:  ")
printf("\n The repeatable error of system is %.5f in.",RE)