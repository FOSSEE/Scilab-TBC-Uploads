clc;
pathname=get_absolute_file_path('14_8_soln.sce')
filename=pathname+filesep()+'14_8_data.sci'
exec(filename)

// Solutions:
// inlet pressure,
p_in=101; //kPa
// actual power,
act_kW=((p_in*Q)/(17.1*(eff_o/100)))*(((p_out+101)/p_in)^0.286-1); //kW
// electric power required to drive electric motor,
elect_kW=act_kW/(eff_mot/100); //kW
// rounding off the above answer
elect_kW=fix(elect_kW)+(fix(round((elect_kW-fix(elect_kW))*10))/10); //kW
// cost of electricity,
yearly_cost=elect_kW*t*cost_per_wat; //$/yr

// Results:
printf("\n  Results:  ")
printf("\n The cost of electricity per year is %.0f $.",yearly_cost)
printf("\n The answer in the program does not match with that in the textbook due to roundoff error (standard electric ratings)")
