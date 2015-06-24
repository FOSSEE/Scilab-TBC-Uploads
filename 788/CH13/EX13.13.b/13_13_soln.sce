clc;
pathname=get_absolute_file_path('13_13_soln.sce')
filename=pathname+filesep()+'13_13_data.sci'
exec(filename)

// Solution:
// atmospheric temperature in kelvin,
T1=T1+273; //K
// temperature of air in kelvin in pneumatic cylinder,
T2=T2+273; //K
// absolute pneumatic cylinder pressure,
p2=p2+101; //kPa abs
// flow-rate of air consumed by cylinder,
Q2=Q1*(p1/p2)*(T2/T1); //m^3/min
// reciprocation rate of piston,
N=floor(Q2/((%pi/4)*(d/1000)^2*(L/1000))); //cycles/min

// Results:
printf("\n  Results:  ")   
printf("\n The reciprocation rate of piston is %.0f cycles/min.",N)
