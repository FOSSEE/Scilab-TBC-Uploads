pathname=get_absolute_file_path('16_6.sce')
filename=pathname+filesep()+'16_6data.sci'
exec(filename)
deff("[v]=f(z)","v=(-W/(24*EI))*(6*(L^2)*z^2 -4*L*z^3 +z^4)");
funcprot();
z=[0:0.05:L];
fplot2d(z,f);
xgrid(3);
datatipToggle();
xtitle( 'deflection curve', ' -z- ', '-v-');
printf("\ntip deflection: %f m",f(L));
printf("\n\nclick on the point to view its coordinate on the plot");