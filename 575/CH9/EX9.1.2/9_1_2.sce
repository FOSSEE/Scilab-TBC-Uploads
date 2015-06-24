clc
pathname=get_absolute_file_path('9_1_2.sce')
filename=pathname+filesep()+'912.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
disp("From reaction, only gaseous are counted")
left=1+2
right=1+1
deltaUr=deltaHr-R*T*(right-left)/10^3
printf("deltaUr=%f Kj/mol",deltaUr)