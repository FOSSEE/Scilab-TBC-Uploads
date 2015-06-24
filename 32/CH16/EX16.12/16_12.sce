//pathname=get_absolute_file_path('16.12.sce')
//filename=pathname+filesep()+'16.12-data.sci'
//exec(filename)
//Pressures(in bar):
p2=180
p1=1
//Temperatures(in K):
T1=300
T2=273+150
//Index of polytropic compression:
n=1.25
//Number of stages:
i=(n-1)/n*log(p2/p1)/log(T2/T1)
printf("\n RESULT \n")
printf("\nNumber of stages = %d",i)