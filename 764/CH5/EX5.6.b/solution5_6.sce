
//Obtain path of solution file
path = get_absolute_file_path('solution5_6.sce')
//Obtain path of data file
datapath = path + filesep() + 'data5_6.sci'
//Obtain path of function file
funcpath = path + filesep() + 'functions5_6.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
exec(funcpath,[-1])

//Call the function to plot S-N Curve
funcprot(0)
[a, b, c, d] = SNplot(Sut,Se)
//For N cycles
val = log10(N)
//Calculate the y-coordinate corresponding to val using linear interpolation
Sfl = b + (((a - b)/(c - d))*(val - d))
//Calculate the fatigue strength Sf (N/mm2)
Sf = (10^Sfl)
//Print results
printf('Fatigue strength of the bar(Sf): %f N/mm2\n',Sf)
