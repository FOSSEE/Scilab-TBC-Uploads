clc
pathname=get_absolute_file_path('4_9_1.sce')
filename=pathname+filesep()+'491.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
disp("Design")
MEKin1=feed*x
MEKout1=TopFlow1*outputx1 + BottomFlow1
closure1=MEKout1*100/MEKin1
printf("closure1=%d percent",closure1)
disp("Experiment")
MEKin2=feed*x
MEKout2=TopFlow2*outputx2 + BottomFlow2
closure2=MEKout2*100/MEKin2
printf("closure2=%d percent",closure2)