clc
pathname=get_absolute_file_path('5_3_1.sce')
filename=pathname+filesep()+'531.sci'
exec(filename)
printf("All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
Pideal=0.08206*T/Vcap
printf(" \n The value of pressure as per Ideal gas equation = %f atm",Pideal)
Tr=T/Tc
B0=0.083 - (0.422/(Tr)^1.6)
B1=0.139 - (0.172/(Tr)^4.2)
B=0.08206*Tc*(B0+w*B1)/Pc
Pvirial=0.08206*T*(1+ B/Vcap)/Vcap
printf("\n The value of pressure as per Virial gas equation = %f atm",Pvirial)
e=(Pideal-Pvirial)*100/Pvirial
printf(" \n Percentage error due to Ideal gas Equation = %f",e)