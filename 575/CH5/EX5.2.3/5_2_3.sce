clc
pathname=get_absolute_file_path('5_2_3.sce')
filename=pathname+filesep()+'523.sci'
exec(filename)
V2=V1*P1*T2/(P2*T1)
printf("Volume in final state=%f ft^3",V2)