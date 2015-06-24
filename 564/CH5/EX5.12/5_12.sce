pathname=get_absolute_file_path('5_12.sce')
filename=pathname+filesep()+'5_12data.sci'
exec(filename)
v1= (L1/L0)*V(3);
v2= (L2/L0)*V(4);
v3= v1+v2;
theta=atan(v3/(D(9)-D(6)));
printf("\nθB: %f rad",theta);