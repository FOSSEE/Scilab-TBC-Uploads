clc;
pathname=get_absolute_file_path('14_3_soln.sce')
filename=pathname+filesep()+'14_3_data.sci'
exec(filename)

// Solutions:
// inlet pressure,
p_in=14.7; //psi
// actual horsepower at 100 psig,
act_HP=((p_in*Q)/(65.4*(eff_o/100)))*(((p_out+14.7)/p_in)^0.286-1); //HP
// actual horsepower at 115 psig,
act_HP1=((p_in*Q)/(65.4*(eff_o/100)))*(((p_out1+14.7)/p_in)^0.286-1); //HP
// actual power at 100 psig in kW,
act_kW=act_HP*0.746; //kW
// electric power required to drive electric motor at 100 psig,
elect_kW=act_kW/(eff_mot/100); //kW
// cost of electricity per year at 100 psig,
yearly_cost=elect_kW*t*cost_per_wat; //$/yr
// actual power at 115 psig in kW,
act_kW1=act_HP1*0.746; //kW
// electric power required to drive electric motor at 115 psig,
elect_kW1=act_kW1/(eff_mot/100); //kW
// cost of electricity per year at 115 psig,
yearly_cost1=elect_kW1*t*cost_per_wat; //$/yr

// Results:
printf("\n  Results:  ")
printf("\n The actual HP required to drive the compressor at 100 psig is %.1f HP.",act_HP)
printf("\n The actual HP required to drive the compressor at 115 psig is %.1f HP.",act_HP1)
printf("\n The cost of electricity per year at 100 psig is %.0f $.",yearly_cost)
printf("\n The cost of electricity per year at 115 psig is %.0f $.",yearly_cost1)
printf("\n The answer in the program does not match with that in the textbook due to roundoff error (standard electric ratings)")

