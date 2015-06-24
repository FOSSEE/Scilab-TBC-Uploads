clc
pathname=get_absolute_file_path('4_3_3.sce')
filename=pathname+filesep()+'433.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
disp("Using NaOH balance")
m2=inputx*basis/outputx
printf("m2=%f Kg NaOH",m2)
disp("Using Total mass balance")
m1=m2-basis
printf("m1=%f Kg Water",m1)
V1=m1/D
printf(" \n V1=%f Litres",V1)
Ratio1=V1/basis
Ratio2=m2/basis
printf(" \n Ratio of lt water/Kg Feed = %f lt water/Kg Feed",Ratio1)
printf(" \n Ratio of Kg product/Kg Feed = %f Kg product/Kg Feed",Ratio2)