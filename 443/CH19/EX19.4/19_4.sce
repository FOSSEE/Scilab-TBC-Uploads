pathname=get_absolute_file_path('19_4.sce')
filename=pathname+filesep()+'19_4_data.sci'
exec(filename)
//Problem no 19.4 page 712
//Consider naturally aspirated engine 
//Break pressure
bp1=pbm*Vs*n*10^5/60000
//Indicated power
ip1=bp1/nm
//Efficiency ratio (nith/nair-std)
nair1=nair-(1/std)
//Indicated thermal efficiency
nith1=nair1*nr
//Mass flow rate fuuel mfna
mfna=(ip1/nith1)*(3600/CV)
//If the test duration is t hours then specific mass is given by
//Consider supercharged engine
bp2=(pbm1*(10^5)*Vs*n)/60000
//Indicated power
ip2=bp2/nm
//Efficiency ratio
nair2=nair-(1/std1)
//Indicated thermal efficiency
nith2=nair2*nr
//Mass flow rate of fuel
mfsc=(ip2/nith2)*(3600/CV)
//Time (in hours)
t=((1.67-1.44)/0.066)
printf("For Naturally aspirated engine\n")
printf("Break pressure : %f\n",bp1)
printf("Consider the supercharged engine\n")
printf("Break pressure %f\n",bp2)
printf("Efficiency ratio: %f\n",nair2*100)
printf("Time: %f\n",t)
