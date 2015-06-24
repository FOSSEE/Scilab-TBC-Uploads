//pathname=get_absolute_file_path('1.14.sce')
//filename=pathname+filesep()+'1.14-data.sci'
//exec(filename)
//Initial pressure(in Pa):
p1=750*10^3
//Initial temperature(in K):
t1=600
//Initial volume(in m^3):
v1=0.2
//Final pressure(in Pa):
p2=2*10^5
//Final volume(in m^3):
v2=0.5
//Final temperature(in K):
t2=p2*v2*t1/(p1*v1)
printf("\n\n RESULT \n\n")
printf("\n\n Final temperature = %f K \n\n",t2)