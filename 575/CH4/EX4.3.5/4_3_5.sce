clc
pathname=get_absolute_file_path('4_3_5.sce')
filename=pathname+filesep()+'435.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
mass1=outputBasis*M1*outputx
mass2=outputBasis*M2*(1-outputx)
mass=mass1+mass2
yB2=mass1/mass
m1=basis*D
printf(" \n m1=%f Kg/h",m1)
mB3=z*inputx*m1
printf(" \n mB3=%f Kg/h",mB3)
disp("Using Benzene balance,")
m2=(inputx*m1-mB3)/yB2
printf(" \n m2=%f Kg/h",m2)
disp("Using Toluene balance,")
mT3=(1-inputx)*m1-(1-yB2)*m2
printf(" \n mT3=%f Kg/h",mT3)
m3=mB3+mT3
printf(" \n m3=%f Kg/h",m3)
yB3=mB3/m3
printf(" \n yB3=%f kg B/kg",yB3)
yT3=1-yB3
printf(" \n yT3=%f kg T/kg",yT3)