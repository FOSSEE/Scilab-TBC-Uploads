clc
pathname=get_absolute_file_path('6_4_1.sce')
filename=pathname+filesep()+'641.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
yH2O=PH2O/P
ySO2=PSO2/P
yAir=1-yH2O-ySO2
disp("Using Air balance, ")
nG2=(1-x)*basis/yAir
printf("nG2=%f lbm/h",nG2)
xSO2=y/102
xH2O=1-xSO2
disp("Using SO2 balance, ")
nL2=(basis*x-nG2*ySO2)*M1/(xSO2)
printf("nL2=%d lbm/h",nL2)
disp("Using H2O balance, ")
nL1=nG2*yH2O*M2 + nL2*xH2O
printf("nL1=%d lbm H2O/h",nL1)
SO2Absorbed=nL2*xSO2
SO2Fed=basis*x*M1
Fraction=SO2Absorbed/SO2Fed
printf(" \n Fraction SO2 absorbed= %f lbm SO2 absorbed/lbm SO2 fed",Fraction)