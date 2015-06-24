clc
pathname=get_absolute_file_path('4_7_2.sce')
filename=pathname+filesep()+'472.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
disp("Overall Propane conversion, ")
n6=(1-E)*basis
printf("n6=%d mol propane",n6)
disp("Overall C balance, ")
n7=basis - n6
printf("n7=%d mol propene",n7)
disp("Overall H balance ,")
n8=(basis*8-n6*8-n7*6)/2
printf("n8=%d mol H2",n8)
PercentagePropane=n6*100/(n6+n7+n8)
printf("\n Mole percentage of propane=%f",PercentagePropane)
PercentagePropene=(100-PercentagePropane)/2
printf("\n Mole percentage of propene=mole percentage of hydrogen=%f",PercentagePropene)
disp("Using given relations among separator variables,")
n3=n6/0.00555
n10=0.05*n7
printf(" \n n3=%d mol Propane",n3)
printf(" \n n10=%f mol Propene",n10)
disp("using Propane balance about separaation unit")
n9=n3-n6
printf("n9=%d mol Propane",n9)
n1=basis+n9
disp("Using Propane balance about mixing point,")
printf("n1=%d mol H2",n1)
RecycleRatio=(n9+n10)/basis
printf(" \n recycle ratio=%d mol recycle/mol fresh feed",RecycleRatio)
SinglePass=(n1-n3)*100/n1
printf(" \n single-pass conversion=%f ",SinglePass)