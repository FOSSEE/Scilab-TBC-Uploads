clear
//Depends on data22_5.sci file
//Obtain path of solution file
path = get_absolute_file_path('Ex22_5.sce')
//Obtain path of data file
datapath = path + filesep() + 'data22_5.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the permissible strength of the pipe sigma (N/mm2)
sigma = Syt/fs
//Calculate the thickness of the pipe t (mm)
t = (Di/2) * (sqrt((sigma + (1-mu)*Pi)/(sigma - (1+mu)*Pi)) - 1)
tround = ceil(t)
//Print results
printf("\nThickness of the pipe(t) = %f or %f mm \n",t,tround)
