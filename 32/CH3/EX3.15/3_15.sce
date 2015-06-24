//pathname=get_absolute_file_path('3.15.sce')
//filename=pathname+filesep()+'3.15-data.sci'
//exec(filename)
//Initial pressure(in MPa):
p1=0.5
//Initial temperature(in K):
T1=400
//Ratio of v2 to v1:
r1=2
//Ratio of v3 to v1:
r2=6
//Universal gas constant(in kJ/kg):
R=8.314
//Work from state 1 to 2(in kJ):
Wa=R*T1
//Temperature at point 2(in K):
T2=2*T1
//Work done from state 2 to 3(in kJ):
Wb=R*T2*log(r2/r1)
//Total work done by air(in kJ):
W=Wa+Wb
printf("\nRESULT\n")
printf("\nWork done = %f kJ",W)