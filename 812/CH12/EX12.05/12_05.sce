//number and flow//
pathname=get_absolute_file_path('12.05.sce')
filename=pathname+filesep()+'12.05-data.sci'
exec(filename)
//Mach number at the exit:
Me=sqrt(((p0/pe)^((k-1)/k)-1)*2/(k-1))
//Temperature at exit(in K):
Te=T0/(1+(k-1)/2*Me^2)
//Mass flow rate(in kg/s):
m=pe*1000*Me*sqrt(k/R/Te)*Ae
printf("\n\nRESULTS\n\n")
printf("\n\nMach number at the exit: %.3f \n\n",Me)
printf("\n\nMass flow rate: %.3f kg/sec\n\n",m)
