pathname=get_absolute_file_path('3_2.sce')
filename=pathname+filesep()+'3_2_data.sci'
exec(filename)
//Compression Ratio
r=(t2/t1)^(1/(y-1))
//Efficiency of otto cycle
notto = 1-(t1/t2)
printf("\n\nResults:\n\n")
printf("\n\nCompression Ratio: %f\n\n",r)
printf("\n\nAir Standard Efficiency On Ideal Otto Cycle : %f\n\n",notto*100)