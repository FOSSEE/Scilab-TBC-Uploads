//pathname=get_absolute_file_path('4.15.sce')
//filename=pathname+filesep()+'4.15-data.sci'
//exec(filename)
//Maximum temperature(in K):
T1=500+273
//Minimum temperature(in K):
T2=200+273
//Temperature of the body(in K):
T3=450+273
//Efficiency:
n=1-T2/T1
//Ratio of W to Q1:
r1=n
//COP of pump:
COP=T3/(T3-T2)
//Ratio of Q3 to W:
r2=COP*2/3
//Ratio of Q3 to Q1:
r3=r1*r2
printf("\nRESULT\n")
printf("\nRatio of heat rejected to body at 450ºC to the heat supplied by the reservoir = %f",r3)