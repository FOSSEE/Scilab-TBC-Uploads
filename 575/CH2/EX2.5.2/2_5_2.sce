clc
pathname=get_absolute_file_path('2_5_2.sce')
filename=pathname+filesep()+'252.sci'
exec(filename)
//Here We used standard library functions mean and st_deviation
ybar=mean(y);
sy=st_deviation(y);
defaultvalue=ybar+3*sy+1;
printf("the maximum allowed value of y i.e. bad batches in a week is %d \n", defaultvalue)
disp("in case of 2 standard deviations");
defaultvalue=ybar+2*sy+1;
printf("the limiting value of y i.e. bad batches in a week is %d",defaultvalue)