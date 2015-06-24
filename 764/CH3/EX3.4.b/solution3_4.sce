
//Obtain path of solution file
path = get_absolute_file_path('solution3_4.sce')
//Obtain path of data file
datapath = path + filesep() + 'data3_4.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
printf('\nMaximum diameter of hole is: %f mm\n',(Dh + Uh))
printf('\nMinimum diameter of hole is: %f mm\n',(Dh + Lh))
printf('\nMaximum diameter of bolt is: %f mm\n',(Db + Ub))
printf('\nMinimum diameter of bolt is: %f mm\n',(Db + Lb))
//Calculate the value of tolerance x mm
x = (Dh + Lh)-(Db + Ub)
printf('\nMaximum centre to centre distance between bolts:%f mm\n',(C + x))
printf('\nMinimum centre to centre distance between bolts:%f mm\n',(C - x))

