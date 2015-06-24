//Volume flow rate//
pathname=get_absolute_file_path('5.09.sce')
filename=pathname+filesep()+'5.09-data.sci'
exec(filename)
//Volume flow rate(in m^3/sec):
Q=d*g*sind(theta)*b*(h/1000)^3*1000/u/3
printf("RESULTS")
printf("\n\nVolume flow rate: %.4f m^3/sec\n\n",Q)
