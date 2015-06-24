clc
pathname=get_absolute_file_path('4_2_3.sce')
filename=pathname+filesep()+'423.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
m=m1+m2
printf(" \n Total mass after mixing m=%d g",m)
x=(m1*x1 + m2*x2)/m
printf(" \n The composition of the methanol in the product is %f and water is %f",x,1-x)