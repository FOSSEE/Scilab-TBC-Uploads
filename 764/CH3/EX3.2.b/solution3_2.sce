
//Obtain path of solution file
path = get_absolute_file_path('solution3_2.sce')
//Obtain path of data file
datapath = path + filesep() + 'data3_2.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
printf('\nMaximum diameter of housing is: %f mm\n',(Dh + Uh))
printf('\nMinimum diameter of housing is: %f mm\n',(Dh + Lh))
printf('\nMaximum diameter of valve seating is: %f mm\n',(Dv + Uv))
printf('\nMinimum diameter of valve seating is: %f mm\n',(Dv + Lv))
printf('\nMinimum interference is: %f mm\n',((Dv + Lv)-(Dh + Uh)))
printf('\nMaximum interference is: %f mm\n',((Dv + Uv)-(Dh + Lh)))
