clc
pathname=get_absolute_file_path('2_2_1.sce')
filename=pathname+filesep()+'221.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
AcclFinal=AcclInitial*((3600*24*365)^2)/10^5;
//the calculations involved are the conversion factors
printf(" \n final acceleration=%E Km/Yr^2",AcclFinal)