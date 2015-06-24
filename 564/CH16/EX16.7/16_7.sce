pathname=get_absolute_file_path('16_7.sce')
filename=pathname+filesep()+'16_7data.sci'
exec(filename)
deff("[v]=f(z)","v=(W/(24*EI))*(2*L*z^3 -z*L^3 -z^4)");
funcprot();
z=[0:0.05:L];
fplot2d(z,f);
xgrid(3);
datatipToggle();
xtitle( 'deflection curve', ' -z- ', '-v-');
printf("\nmaximum deflection: %f m",f(L/2));
printf("\n\nclick on the point to view its coordinate on the plot");