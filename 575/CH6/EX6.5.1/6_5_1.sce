clc
pathname=get_absolute_file_path('6_5_1.sce')
filename=pathname+filesep()+'651.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
disp("COmposition of Filter cake,")
disp("m2=4m3")
disp("Water balance around the crystallizer,")
printf("\n %f kg H2O = %f m1 + %f m1",basis*inputx,outputx,outputx)
disp("Mass balance around crystallizer, ")
printf(" \n %d=m1+m2+m3",basis)
A=[0 1 -4;outputx 0 outputx;1 1 1]
b=[0;basis*inputx;basis]
C=A\b
//Here we solved two linear equations simultaneously
m1=C(1,1)
printf(" \n m1=%f Kg",m1)
m2=C(2,1)
printf(" \n m2=%f Kg",m2)
m3=C(3,1)
printf(" \n m3=%f Kg",m3)
disp("Overall AgNO3 balance,")
m5=(1-inputx)*basis - (1-outputx)*m1
printf("m5=%f kg AgNO3 crystals recovered",m5)
percentage=m5*100/(basis*(1-inputx))
printf(" \n Percentage recovery=%f",percentage)
disp("Overall mass balance")
m4=basis-m1-m5
printf("m4=%d Kg water removed in the Dryer",m4)