clc
pathname=get_absolute_file_path('6_5_2.sce')
filename=pathname+filesep()+'652.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
outputx=S/(S+100)
printf("x=%f Kg KNO3/Kg",outputx)
disp("Water balance")
m1=basis*(1-inputx)/(1-outputx)
printf(" \n m1=%f Kg",m1)
disp("Mass balance")
m2=basis-m1
printf(" \n m2=%f kg",m2)
percentage=m2*100/(basis*inputx)
printf(" \n Percentage of KNO3 in the feed that crystallizes is %f",percentage)