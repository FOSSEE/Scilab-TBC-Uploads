clc
pathname=get_absolute_file_path('4_8_3.sce')
filename=pathname+filesep()+'483.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
disp(" 50% excess air")
nO2theoretical=basis*3.5
n0=nO2theoretical*(1+excess)/0.21
printf(" n0=%d mol air fed",n0)
disp("90% ethane conversion")
n1=(1-E1)*basis
printf("No. of moles of ethane unreacted= %d",n1)
disp("25% conversion to CO")
n4=E2*(basis-n1)*2
printf("n4= %d mol CO",n4)
disp("nitrogen balance")
n3=0.79*n0
printf("n3= %d mol N2",n3)
disp("Atomic carbon balance")
n5=2*basis-2*n1-n4
printf("n5= %d mol CO2",n5)
disp("Atomic hydrogen balance")
n6=(basis*6-n1*6)/2
printf("n6= %d mol H2O",n6)
disp("Atomic oxygen balance")
n2=(nO2theoretical*1.5*2-n4-n5*2-n6)/2
printf("n2= %d mol O2",n2)
dry=n1+n2+n3+n4+n5
wet=dry+n6
y1=n1/dry
printf("\n y1= %f mol C2H6/mol",y1)
y2=n2/dry
printf("\n y2= %f mol O2/mol",y2)
y3=n3/dry
printf("\n y3= %f mol N2/mol",y3)
y4=n4/dry
printf("\n y4= %f mol CO/mol",y4)
y5=n5/dry
printf("\n y5= %f mol CO2/mol",y5)
ratio=n6/dry
printf(" \n ratio=%f mol H2O/mol dry stack gas",ratio)