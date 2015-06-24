clc
pathname=get_absolute_file_path('6_5_3.sce')
filename=pathname+filesep()+'653.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
disp("Total mass balance")
disp("m1=1+m2")
disp("MgSO4 balance")
printf(" \n %f m1 = %d* %f / %f + m2 %f",inputx,basis,M,M1,outputx)
A=[1 -1;inputx -outputx]
b=[1;basis*M/M1]
C=A\b
//Here we solved two linear equations simultaneously
m1=C(1,1)
m2=C(2,1)
printf(" \n m1=%f Tonne/h",m1)
printf(" \n m2=%f Tonne/h",m2)