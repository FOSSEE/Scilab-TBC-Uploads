clc
pathname=get_absolute_file_path('6_3_1.sce')
filename=pathname+filesep()+'631.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
y=Pstar/P
printf(" \n Molar composition of Water is %f and Air is %f",y,1-y)