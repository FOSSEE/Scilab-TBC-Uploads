pathname=get_absolute_file_path('16_1.sce')
filename=pathname+filesep()+'16_1data.sci'
exec(filename)
Ixx=(a*b^3)/12 - ((a-tx)*(b-2*ty)^3)/12;
deff("[Sz]=f(y)","Sz=M*y/Ixx");
y=[-b/2:0.05:b/2];
fplot2d(y,f);
xgrid(3);
datatipToggle();
xtitle( 'Direct stress', ' -y- ', '-σz-');
printf("\nσz at the top of the beam: %f N/mm^2",f(b/2));
printf("\nσz at the bottom of the beam: %f N/mm^2",f(-b/2));