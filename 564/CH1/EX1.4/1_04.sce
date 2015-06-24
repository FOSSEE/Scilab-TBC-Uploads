pathname=get_absolute_file_path('1_04.sce')
filename=pathname+filesep()+'1_04data.sci'
exec(filename)
Ex= (1/E)*(Sx-v*Sy);//εx
Ey= (1/E)*(Sy-v*Sx);//εy
Ez= (1/E)*(0-v*(Sx+Sy));//εz
printf("\nεx: %f",Ex);
printf("\nεy: %f",Ey);
printf("\nεz: %f",Ez);
Tmax=(Sx-Sy)/2;//τmax
Gmax=2*(1+v)*Tmax/E;//γmax
printf("\nγmax: %f",Gmax);
printf("\nτmax: %f N/mm^2",Tmax);