pathname=get_absolute_file_path('3_4.sce')
filename=pathname+filesep()+'3_4_data.sci'
exec(filename)
z=(p2/p1)^(1/n)
//Compression ratio
r=((yn*z)-x)/(yn-(x*z))
// Air Standard Efficiency 
nastd=1-(1/(r^(y-1)))
//Relative Efficiency = Indicated Efficiency / Air Standard Efficiency
nith=nr*nastd 
//Fuel Consumption (in kg/KWH) isfc = m/ip where m ( is in kg/sec)
a=1/(CV*nith)
isfc=a*3600
printf ("\n\nResults \n\n")
printf("z:%f",z)
printf("\n\nr:%f\n",r)
printf("\n\nAir Standard Efficiency :  %f\n\n",nastd*100)
printf("\nIndicated Thermal Efficiency :  %f\n\n",nith*100)
printf(" \n\nFuel Consumption:  %f\n\n",isfc)
