pathname=get_absolute_file_path('3_10.sce')
filename=pathname+filesep()+'3_10_data.sci'
exec(filename)
//Otto cycle efficiency
notto=(1-(1/r^(y-1)))*100
e=(p3/p4n)^(1/y)
//Efficiency of Atkinson cycle
natk=(1-(y*(e-r))/(e^y-r^y))*100
//Ratio of the efficiencies
rn=natk/notto
printf("\n\nRESULS\n\n")
printf("\nOtto cycle efficiency:%f\n",notto)
printf("\nEfficiency of Atkinson cycle:%f\n",natk)
printf("\nRatio of the efficiencies:%f\n",rn)