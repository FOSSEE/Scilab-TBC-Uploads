pathname=get_absolute_file_path('14_2.sce')
filename=pathname+filesep()+'14_2data.sci'
exec(filename)
clear
ax=Rh/(W/g);//horizontal deceleration
ay=(Rv-W)/(W/g);//vertical deceleration
Ialpha=Rv*Sh +Rh*Sv;
alpha=(Ialpha*10^6)/Icg;
t=v0/ay;
omega=alpha*t;
printf("\nhorizontal reaction force: %f kN",W*ax/g);
printf("\nvertical reaction force: %f kN",W*ay/g);
printf("\nα: %f rad/s^2",alpha);
printf("\nt: %f s",t);
printf("\nω: %f rad/s",omega);
