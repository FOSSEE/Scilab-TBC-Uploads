pathname=get_absolute_file_path('16_13.sce')
filename=pathname+filesep()+'16_13data.sci'
exec(filename)
dw=d- 2*tf;
Ixx=2*(((b*tf^3)/12)+ b*tf*((dw+tf)/2)^2) + (tw*dw^3)/12;
Iyy=(2*tf*b^3)/12 + (dw*dw^3)/12;
printf("\n Ixx= %f mm^4",Ixx);
printf("\n Iyy= %f mm^4",Iyy)