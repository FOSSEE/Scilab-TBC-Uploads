//pathname=get_absolute_file_path('5.17.sce')
//filename=pathname+filesep()+'5.17-data.sci'
//exec(filename)
//Heat added in process 1-2(in kJ):
Q12=1000
//Heat added in process 3-4(in kJ):
Q34=800
//Temperature at point 1(in K):
T1=500
//Temperature at point 3(in K):
T3=400
//Temperature at point 5(in K):
T5=300
//Total heat added(in kJ):
Qt=Q12+Q34
//Entropy change from state 1-2(in kJ/K):
S12=Q12/T1
//Entropy change from state 3-4(in kJ/K):
S34=Q34/T3
//Entropy change from state 5-6(in kJ/K):
S56=S12+S34
//Heat rejected in process 5-6(in kJ):
Q56=T5*S56
//Net work done(in kJ):
W=Q12+Q34-Q56
//Thermal efficiency of the cycle:
n=W/Qt
printf("\nRESULT\n")
printf("\nWork done = %d kJ",W)
printf("\nThermal efficiency = %f percent",n*100)