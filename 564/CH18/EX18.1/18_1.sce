pathname=get_absolute_file_path('18_1.sce')
filename=pathname+filesep()+'18_1data.sci'
exec(filename)
clear
A=%pi*d*d/4;
tmin1=Tmax/(2*A*Smax);
tmin2= (Tmax*%pi*d*0.5*L)/(4*A*A*G*angle);
if(tmin1<tmin2) then
    printf("\nminimum allowable thickness is: %f mm",tmin2);
else
    printf("\nminimum allowable thickness is: %f mm",tmin1);
end