pathname=get_absolute_file_path('25_2.sce')
filename=pathname+filesep()+'25_2data.sci'
exec(filename)
clear
vtl=vlt*(Et/El);
e1=(S1/El)-(vtl*S2/Et);
e2=(S2/Et)-(vlt*S1/El);
gammalt=S3/Glt;//γlt
printf("\nνtl:%f ",vtl);
printf("\nεl:%f ",e1);
printf("\nεt:%f ",e2);
printf("\nγlt:%f ",gammalt);