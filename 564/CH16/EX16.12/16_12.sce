pathname=get_absolute_file_path('16_12.sce')
filename=pathname+filesep()+'16_12data.sci'
exec(filename)
P=(W*Ixy/(E*(Ixx*Iyy -Ixy^2)));
P1=-(W*Iyy/(E*(Ixx*Iyy -Ixy^2)));
deff("[u]=f(z)","u=P*(0.5*L*z^2 -(1/6)*z^3)");
deff("[v]=f1(z)","v=P1*(0.5*L*z^2 -(1/6)*z^3)");
funcprot();
z=[0:0.05:L];
subplot(2,1,1);
fplot2d(z,f);
xgrid(3);
xtitle( 'deflection curve(u)', ' -z- ', '-u-');
subplot(2,1,2);
fplot2d(z,f1);
xgrid(3);
xtitle( 'deflection curve(v)', ' -z- ', '-v-');
datatipToggle();
printf("\nmaximum value of u: %f",f(L));
printf("\nmaximum value of v: %f",f1(L));
printf("\n\nclick on the point to view its coordinate on the plot");