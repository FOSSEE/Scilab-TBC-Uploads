//pathname=get_absolute_file_path('3.08.sce')
//filename=pathname+filesep()+'3.08-data.sci'
//exec(filename)
//Initial temperature(in K):
t1=627+273
//Final temperature(in K):
t2=27+273
//Specific heat at const pressure(in kJ/kg.K):
Cp=1.005
//Exit velocity(in m/s):
c2=sqrt(2*Cp*10^3*(t1-t2))
printf("\nRESULT\n")
printf("\nExit Velocity = %f m/s",c2)