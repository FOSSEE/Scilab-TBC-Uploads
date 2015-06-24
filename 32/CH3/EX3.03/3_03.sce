//pathname=get_absolute_file_path('3.03.sce')
//filename=pathname+filesep()+'3.03-data.sci'
//exec(filename)
//Mass flow rate(in kg/hr):
m=50
//Initial temp(in C):
t1=800
//Final temp(in C):
t2=50
//Heat capacity at const pressure(in kJ/kg.K):
Cp=1.08
//Heat to be removed(in kJ/hr):
Q=m*Cp*(t2-t1)
printf("\nRESULT\n")
printf("Heat should be removed at %d kJ/hr",-Q)