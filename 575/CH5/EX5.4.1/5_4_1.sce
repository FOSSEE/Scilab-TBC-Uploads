clc
pathname=get_absolute_file_path('5_4_1.sce')
filename=pathname+filesep()+'541.sci'
exec(filename)
printf("All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
z=0.934
printf(" \n From the Table, z= %f",z)
ncap=P*Vcap*101.325/(z*R*T*1.01325)
mcap=ncap*M
printf(" \n Mass flow rate of Methane = %f Kg/hr",mcap)