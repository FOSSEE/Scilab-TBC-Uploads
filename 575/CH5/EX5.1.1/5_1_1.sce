clc
pathname=get_absolute_file_path('5_1_1.sce')
filename=pathname+filesep()+'511.sci'
exec(filename)
invPbar=wtperct/Dwater + (1-wtperct)/Dsulfuric
printf("Density calculated using volume additvity=%f",1/invPbar)
Pbar=wtperct*Dwater + (1-wtperct)*Dsulfuric
printf(" \n Density calculated using mass additivity=%f",Pbar)