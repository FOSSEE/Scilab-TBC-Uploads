pathname=get_absolute_file_path('2_3.sce')
filename=pathname+filesep()+'2_3_data.sci'
exec(filename)
//For N2
p1=(m1*RN2*T)/V
//For O2
p2=(m2*RO2*T)/V
//For CO2
p3=(m3*RCO2*T)/V
//Total pressure of the mixture
p=p1+p2+p3
//Gas constant of the mixture
R=(m1*RN2+m2*RO2+m3*RCO2)/(m1+m2+m3)
printf("\n\nRESULTS\n\n")
printf("\npressure for N2:%f\n",p1)
printf("\npressure for O2:%f\n",p2)
printf("\npressure for CO2:%f\n",p3)
printf("\ntotal pressure:%f\n",p)
printf("\ngas consant of the mixture:%f\n",R)