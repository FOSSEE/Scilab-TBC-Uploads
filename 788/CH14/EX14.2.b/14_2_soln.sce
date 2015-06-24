clc;
pathname=get_absolute_file_path('14_2_soln.sce')
filename=pathname+filesep()+'14_2_data.sci'
exec(filename)

// Solution:
// from fig 14-3,
// inside diameter raised to 5.31,
k=1.2892; //in
// length of pipe along with valves,
L=L+(2*0.56)+(3*29.4)+(5*1.5)+(4*2.6)+(6*1.23); //ft
// pressure loss,
p_f=(c*L*Q^2)/(3600*CR*k); //psi

// Results:
printf("\n  Results:  ")   
printf("\n The pressure loss for a 250 ft length of pipe is %.2f psi.",p_f)