
//Obtain path of solution file
path = get_absolute_file_path('solution1_1.sce')
//Obtain path of data file
datapath = path + filesep() + 'data1_1.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate series factor for R5 series
f = 10^(1/5)
//Total numbers in R5 series
n = 5 + 1
//Use 'for' loop in order to facilitate iterations 
for i = 1:1:n
    printf('\nNumber %d: %f = %0.1f\n',i,a,a) 
//Obtain numbers in the series
    a = a * f
end
