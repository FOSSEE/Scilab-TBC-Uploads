
//Obtain path of solution file
path = get_absolute_file_path('solution1_2.sce')
//Obtain path of data file
datapath = path + filesep() + 'data1_2.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate series factor for R20 series
f = 10^(1/20)
//Calculate ratio factor Fi
Fi = f^4
//Total numbers in R20/4 series
n = (20/4) + 1
//Use 'for' loop in order to facilitate iterations 
for i = 1:1:n
//Round up a
    c = ceil(a)
    printf('\nNumber %d: %f = %d\n',i,a,a) 
//Obtain numbers in the series 
    a = a * Fi
end
