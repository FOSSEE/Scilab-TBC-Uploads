pathname=get_absolute_file_path('8_2.sce')
filename=pathname+filesep()+'8_2data.sci'
exec(filename)
mu=(P/(E*I))^0.5;//μ
deff("[v]=f(z)","v=e*((cos(mu*(z-L/2))/cos(mu*L/2))-1)");//v
deff("[m]=f1(z)","m=P*(e+e*((cos(mu*(z-L/2))/cos(mu*L/2))-1))");//M
funcprot(0);
z=[0:0.05:L];
subplot(2,1,1);
fplot2d(z,f);
xgrid(3);
xtitle( 'deflection', ' -z- ', '-v-');
subplot(2,1,2);
fplot2d(z,f1);
xgrid(3);
xtitle( 'bending moment', ' -z- ', ' -M-');
datatipToggle();
printf("\nmaximum deflection: %f",f(L/2));
printf("\nM(max)= %f N.m",f1(L/2));