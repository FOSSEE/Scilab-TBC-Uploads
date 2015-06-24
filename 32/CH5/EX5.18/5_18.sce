//pathname=get_absolute_file_path('5.18.sce')
//filename=pathname+filesep()+'5.18-data.sci'
//exec(filename)
//Temperature of the reservoirs(in K):
T1=800
T2=700
T3=600
//Temperature of the sink(in K):
T4=320
//Total heat rejected to the heat sink(in kJ/s):
Q2=10
//Work done(in kW):
W=20
//Total heat added(in kJ/s):
Q1=Q2+W
//Heat from reservoir 2(in kJ/s):
Q12=(Q2/T4-Q1/T3)/(0.7/T1+1/T2-1.7/T3)
//Heat from reservoir 1(in kJ/s):
Q11=0.7*Q12
//Heat from reservoir 3(in kJ/s):
Q13=Q1-1.7*Q12
printf("\nRESULT\n")
printf("\nHeat supplied by reservoir at 800 K = %f kJ/s",Q11)
printf("\nHeat supplied by reservoir at 700 K = %f kJ/s",Q12)
printf("\nHeat supplied by reservoir at 600 K = %f kJ/s",Q13)