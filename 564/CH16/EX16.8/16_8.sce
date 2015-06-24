pathname=get_absolute_file_path('16_8.sce')
filename=pathname+filesep()+'16_8data.sci'
exec(filename)
deff("[v]=f(z)","v=(W/(48*EI))*(4*z^3 -3*z*L^2)");
funcprot();
z=[0:0.05:L];
fplot2d(z,f);
xgrid(3);
datatipToggle();
xtitle( 'deflection curve', ' -z- ', '-v-');
printf("\nmaximum deflection: %f m",f(L/2));
printf("\n\nclick on the point to view its coordinate on the plot");