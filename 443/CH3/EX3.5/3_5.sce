pathname=get_absolute_file_path('3_5.sce')
filename=pathname+filesep()+'3_5_data.sci'
exec(filename)
//Stroke Volume vs (in cc)
Vs=(%pi*d*d*L)/4
//Compression Ratio r 
r=1+(Vs/Vc)
//Ratio Of SPecific Heats 
y=Cp/Cv
//Air Standard Efficiency
n=1-(1/r^(y-1))
printf("\n\nResults\n\n")
printf("\nStroke Volume: %f\n",Vs)
printf("\nCompression Ratio: %f\n",r)
printf("\nRatio Of Specific Heats: %f\n",y)
printf("\nAir Standard Efficiency: %f\n",n*100)