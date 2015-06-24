clc
pathname=get_absolute_file_path('4_4_1.sce')
filename=pathname+filesep()+'441.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
disp("using Overall Mass balance, ")
m3=inputMass1+inputMass2-outputMass1-outputMass2
printf("m3=%d Kg/h",m3)
disp("using Overall balance on A, ")
x3=(inputMass1*inputx1+inputMass2*inputx2-outputMass1*outputx1-outputMass2*outputx2)/m3
printf("m3=%f Kg A/kg",x3)
disp("using Mass balance on Unit 1, ")
m1=inputMass1-outputMass1
printf("m1=%d Kg/h",m1)
disp("using A balance on Unit 1, ")
x1=(inputMass1*inputx1-outputMass1*outputx1)/m1
printf("x1=%f Kg A/kg",x1)
disp("using Mass balance on mixing point, ")
m2=inputMass2+m1
printf("m2=%d Kg/h",m2)
disp("using A balance on mixing point, ")
x2=(inputMass2*inputx2+m1*x1)/m2
printf("x2=%f Kg A/kg",x2)