pathname=get_absolute_file_path('16_5.sce')
filename=pathname+filesep()+'16_5data.sci'
exec(filename)
deff("[v]=f(z)","v=(-W/(6*EI))*(3*L*z^2 -z^3)");
funcprot();
z=[0:0.05:L];
fplot2d(z,f);
xgrid(3);
datatipToggle();
xtitle( 'deflection curve', ' -z- ', '-v-');
printf("\ntip deflection: %f m",f(L));
printf("\n\nclick on the point to view its coordinate on the plot");