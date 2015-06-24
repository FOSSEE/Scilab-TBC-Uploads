clc;
pathname=get_absolute_file_path('10_4_soln.sce')
filename=pathname+filesep()+'10_4_data.sci'
exec(filename)

// Solutions:
// flow-rate,
Q=Q/449; //ft^3/s
// minimum required pipe flow area,
Ai=(Q/v)*144; //in^2
// minimum inside diameter,
Di=sqrt((4*Ai)/(%pi)); //in
// wall thickness,
t1=0.049; t2=0.065; //in
// tube inside diameter,
D1=0.902; D2=0.870; //in
// burst pressure,
BP1=(2*t1*S)/D1; //psi
// working pressure,
WP1=BP1/FS; //psi
printf(" \n The working pressure %.0f psi is not adequate (less than %.0f psi) so next case is considered,",WP1,p)
// burst pressure,
BP2=(2*t2*S)/D2; //psi
// working pressure,
WP2=BP2/FS; //psi
// ratio of inner diameter to thickness,
r2=D2/t2;
printf(" \n The working pressure %.0f psi is greater than %.0f psi) ,",WP2,p)

// Results:
printf("\n  Results:  ")
printf("\n The ratio of inner diameter to length is %.1f.",r2)
printf("\n The answer in the program is different than that in textbook. It may be due to no.s of significant digit in data and calculation")
