clc
pathname=get_absolute_file_path('5_4_2.sce')
filename=pathname+filesep()+'542.sci'
exec(filename)
printf("All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
Tr=T/Tc
Pr=P/Pc
Vrideal=V*Pc/(n*R*Tc)
printf(" \n Tr= %f",Tr)
printf(" \n Pr= %f",Pr)
printf("\n Vrideal=%f",Vrideal)
z=1.77
printf("\n From the graphs, z=%f",z)
P=z*R*T*n/V
printf(" \n Pressure in the cylinder = %f atm",P)