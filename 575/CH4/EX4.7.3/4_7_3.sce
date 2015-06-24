clc
pathname=get_absolute_file_path('4_7_3.sce')
filename=pathname+filesep()+'473.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
disp("Reactor analysis, ")
n2=(1-single_pass)*basis*inputxH2
printf("n2=%d mol H2",n2)
disp("H2 balance")
consH2=basis*inputxH2-n2
printf("H2 moles consumed=%d mol H2",consH2)
disp("CO2 balance")
n1=basis*inputxCO2-consH2/3
printf("n1=%d mol CO2",n1)
disp("Methanol balance")
n3=consH2/3
printf("n3=%d mol Methanol",n3)
disp("H2O balance")
n4=consH2/3
printf("n4=%d mol H2O",n4)
disp("condenser analysis")
disp("Total mole balance")
n5=n1+n2+molI
printf("n5=%d mol",n5)
disp("CO2 balance")
x5C=n1/n5
printf("x5C=%d mol CO2/mol",x5C)
disp("H2 balance")
x5H=n2/n5
printf("x5H=%d mol CO2/mol",x5H)
x1=1-x5C-x5H
printf("x1=%d mol I/mol",x1)
disp("Fresh Feed-Recycle mixing point analysis")
disp("Total mole balance")
printf("n0+nr=%d",basis)
disp("I balance")
printf("n0 %f + nr %f = %d",Ix,x1,molI)
A=[1 1;Ix x1]
b=[basis;molI]
C=A\b //Here We solve two linear equations simultaneously
n0=C(1,1)
nr=C(2,1)
printf(" \n n0=%f mol fresh feed",n0)
printf(" \n nr= %f mol recycle",nr)
x0C=(basis*inputxCO2-nr*x5C)/n0
printf(" \n x0C=%f mol CO2/mol",x0C)
x0H=1-x0C-Ix
printf(" \n x0h=%f mol H2/mol",x0H)
disp("Recycle-Purge splitting Analysis")
disp("Total mole balance")
np=n5-nr
printf("np=%f mol purge",np)
disp("Flow chart scaling")
Factor=final/n3
printf("Factor for scaling=%f Kmol/h/mol",Factor)