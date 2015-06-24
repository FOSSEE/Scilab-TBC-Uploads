clc
pathname=get_absolute_file_path('4_6_3.sce')
filename=pathname+filesep()+'463.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
n1=(1-conv1)*basis*x
n2=conv2*basis*x
E1=n2
E2=basis*x - E1-n1
n3=E1-E2
n4=2*E2
n5=basis*(1-x)
nt=n1+n2+n3+n4+n5
selectivity=n2/n4
printf("selectivity=%f mol Ethene/mol methane",selectivity)