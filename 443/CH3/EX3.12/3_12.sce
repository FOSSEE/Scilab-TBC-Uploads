pathname=get_absolute_file_path('3_12.sce')
filename=pathname+filesep()+'3_12_data.sci'
exec(filename)
//Swept volume(in cc)
Vs=0.25*%pi*d^2*L
//Compression ratio
r=1+(Vs/Vc)
//Cutoff ratio
rc=((x*(r-1)+1))
//Efficiency of diesel cycle
n=1-((1/r^(y-1))*((rc^y-1)/(y*(rc-1))))
printf("\n\nRESULTS\n\n")
printf("\nEfficiency of diesel engine:%f\n",n*100)