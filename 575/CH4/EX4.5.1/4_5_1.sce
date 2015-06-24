clc
pathname=get_absolute_file_path('4_5_1.sce')
filename=pathname+filesep()+'451.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
disp("Overall dry Air balance,")
n1=x3*basis/x1
printf("n1=%f mol Fresh feed",n1)
disp("Overall mole balance,")
n3=n1-basis
printf("n3=%f mol Water condensed",n3)
disp("Mole balance on mixing point,")
disp("n1+n5=n2")
disp("Water balance on mixing point")
printf(" %f n1+ %f n5 = %f n2",1-x1,1-x3,1-x2)
A=[1 -1;1-x2,-(1-x3)]
b=[n1;(1-x1)*n1]
C=A\b
n2=C(1,1)
n5=C(2,1)
printf(" \n n2=%f mol",n2)
printf(" \n n5=%f mol Recycled",n5)