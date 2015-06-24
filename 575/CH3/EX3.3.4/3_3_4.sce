clc
pathname=get_absolute_file_path('3_3_4.sce')
filename=pathname+filesep()+'334.sci'
exec(filename)
Mbar=yN2*MN2+(1-yN2)*MO2
printf(" \n average molecular weight of air from molar composition=%f",Mbar)
InvMbar=xN2/28 + (1-xN2)/32
printf(" \n average molecular weight of air from mass composition=%f",1/InvMbar)