pathname=get_absolute_file_path('3_1.sce')
filename=pathname+filesep()+'3_1_data.sci'
exec(filename)
//Compression Ratio 
r=((p2/p1)^(1/y))
//Air Standard Efficiency
n=1-(1/(r^(y-1)))
printf("\n\nResults\n\n")
printf("\n\nCompression ratio %f\n\n",r)
printf("\n\nAir - Standard efficiency %f\n\n",n*100)