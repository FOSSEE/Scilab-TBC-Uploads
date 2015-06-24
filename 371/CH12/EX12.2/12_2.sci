//Controllers and Their Optimisation//
//Example 12.2//
P=1.8;//permanent error of p controller in percent//
V=100/1.8-1;//gain of the controller in volts//
printf('gain of the controller=V=%fvolts',V);
G=8;//sum of all time constants in milliseconds//
T1=2*G*V;//motor armature time constant//
printf('\nMotor armature time constant=T1=%fmilliseconds',T1);