//pathname=get_absolute_file_path('1.27.sce')
//filename=pathname+filesep()+'1.27-data.sci'
//exec(filename)
//Temperature of entering air(in K):
t1=27+273.15
//Temperature to which it gets heated up to(in K):
t2=500
//Ratio of exit to inlet diameter:
R=sqrt(t2/t1)
printf("\n\n RESULT \n\n")
printf("\n\n Ratio of exit to inlet diameter = %f \n\n",R)