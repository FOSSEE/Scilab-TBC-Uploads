
//Obtain path of solution file
path = get_absolute_file_path('solution1_4.sce')
//Obtain path of data file
datapath = path + filesep() + 'data1_4.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate ratio factor Fi
Fi = (b/a)^(1/n)
//Use R10 series
//Initialise c
c = a
//Use 'for' loop in order to facilitate iterations 
for i = 1:1:(n + 1)
    printf('\nDiameter %d: %f = %f\n',i,a,c) 
//Obtain numbers in the series 
    a = a * Fi
//Round a
c = round(a)
end
