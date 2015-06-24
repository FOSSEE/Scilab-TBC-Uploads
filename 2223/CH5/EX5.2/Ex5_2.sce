// scilab Code Exa 5.2 combined gas and steam cycle power plant
P_gt=10e03; // Power Output in kW
n_st=0.32; // Steam turbine power plant Efficiency

// part(a)steam turbine plant output  
n_gt=0.2; // Gas turbine plant Efficiency
q_gt=P_gt/n_gt;
q_st=(1-n_gt)*q_gt;
P_st=n_st*q_st;
disp("MW",P_st/10e02,"(a)Power output of the steam turbine plant is")

// part(b) thermal efficiency of the combined cycle plant
n_c=n_gt+n_st-(n_gt*n_st);
disp ("%" ,n_c*100,"(b)thermal Efficiency of combined cycle plant is")

// part(c) the heat rate of the combined cycle plant
hr_c=3600/n_c; 
disp ("kJ/kWh",hr_c," (c)Heat Rate of the combined cycle plant is")

