pathname=get_absolute_file_path('3_18.sce')
filename=pathname+filesep()+'3_18_data.sci'
exec(filename)
//Compression ratio
r=(p2/p1)^(1/y)
//Temperature at end of compression(in K)
T2=r^(y-1)*T1
//Temperature at start of expansion stroke(in K)
T3=(Hs/Cp)+T2
//Cutoff ratio
rc=T3/T2
//Efficiency of diesel cycle
n=1-(1/(y*r^(y-1))*(((rc^y)-1)/(rc-1)))
printf("\n\nRESULTS\n\n")
printf("\nCompression ratio:%f\n",r)
printf("\nTemperature at end of compression:%f\n",T2)
printf("\nTemperature at start of expansion stroke:%f\n",T3)
printf("\nEfficiency of diesel cycle:%f\n",n*100)