clc;
pathname=get_absolute_file_path('14_1_soln.sce')
filename=pathname+filesep()+'14_1_data.sci'
exec(filename)

// Solution:
// compression ratio,
CR=(p2+p1)/p1;
// from fig 14-3,
// inside diameter raised to 5.31,
k=1.2892; //in
// experimentally determined coefficient,
c=0.1025/(1)^0.31;
// pressure loss,
p_f=(c*L*Q^2)/(3600*CR*k); //psi

// Results:
printf("\n  Results:  ")   
printf("\n The pressure loss for a 250 ft length of pipe is %.2f psi.",p_f)