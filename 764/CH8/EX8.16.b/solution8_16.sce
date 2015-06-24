
//Obtain path of solution file
path = get_absolute_file_path('solution8_16.sce')
//Obtain path of data file
datapath = path + filesep() + 'data8_16.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the throat of the weld t (mm)
t = (Mt * 1000)/(2 * %pi * tau * ((D/2)^2))
//Calculate the leg of the weld h (mm)
h = t/0.707
hround = ceil(h)
//Print results
printf('\nThroat of the weld(t) = %f mm\n',t)
printf('\nLeg of the weld(h) = %f or %f mm\n',h,hround)
