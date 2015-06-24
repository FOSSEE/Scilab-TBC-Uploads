clc;
pathname=get_absolute_file_path('5_7_soln.sce')
filename=pathname+filesep()+'5_7_data.sci'
exec(filename)

// Solutions:
// Area of piston,
A=(%pi/4)*((d/1000)^2); //m^2
// offset angle,
theta=(theta*%pi)/180; //rad
// Theoretical flow rate,
Qt=(D/1000)*A*N*Y*tan(theta); //m^3/min
// Actual flow rate,
Qa=Qt*(eta_v/100); //m^3/min
// rounding off the above answer
Qa=fix(Qa)+(fix(round((Qa-fix(Qa))*1000))/1000); //m^3/min
// Actual flow rate in L/s,
Qa=Qa/(60*0.001); //L/s

// Results:
printf("\n  Results:  ")
printf("\n The flow rate of axial piston pump in L/s is %.3f L/s.",Qa)

