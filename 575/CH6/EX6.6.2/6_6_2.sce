clc
pathname=get_absolute_file_path('6_6_2.sce')
filename=pathname+filesep()+'662.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
disp("Mass balance")
printf("ms + %d = mE + mR",basis)
disp("acetone balance")
printf("%f *%d = %f mE + %f mR",inputxA,basis,outputxA2,outputxA1)
disp("Water balance")
printf(" \n %f *%d = %f mE + %f mR",1-inputxA,basis,1-outputxA2-outputxM2,1-outputxA1-outputxM1)
A=[1 1 -1;outputxA2 outputxA1 0;1-outputxA2-outputxM2 1-outputxA1-outputxM1 0]
b=[basis;inputxA*basis;(1-inputxA)*basis]
C=A\b
//Here We solved three linear equations simultaneously
mE=C(1,1)
mR=C(2,1)
mS=C(3,1)
printf(" \n mE=%f Kg",mE)
printf(" \n mR=%f Kg",mR)
printf(" \n mS=%f Kg MIBK",mS)