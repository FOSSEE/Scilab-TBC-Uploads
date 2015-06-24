clc;
pathname=get_absolute_file_path('14_4_soln.sce')
filename=pathname+filesep()+'14_4_data.sci'
exec(filename)

// Solutions:
// electric power required to compensate for leakage,
power_rate=(Q_leak/Q)*elect_kW; //kW
// rounding off the above answer
power_rate=fix(power_rate)+(fix(round((power_rate-fix(power_rate))*10))/10); //kW
// cost of electricity per year at 100 psig,
yearly_leak=power_rate*24*365*cost_per_wat; //$/yr

// Results:
printf("\n  Results:  ")
printf("\n The cost of electricity for leakage per year at 100 psig is %.0f $.",yearly_leak)
printf("\n The answer in the program does not match with that in the textbook due to roundoff error(standard electric ratings)")

