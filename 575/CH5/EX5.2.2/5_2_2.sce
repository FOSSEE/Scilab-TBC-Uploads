clc
pathname=get_absolute_file_path('5_2_2.sce')
filename=pathname+filesep()+'522.sci'
exec(filename)
ndot=Vdot/M //kmol/h
vdot=ndot*22.4*T/(273*P)
printf("The volumetric flow rate of the stream=%f m^3/h",vdot)