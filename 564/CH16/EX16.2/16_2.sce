pathname=get_absolute_file_path('16_2.sce')
filename=pathname+filesep()+'16_2data.sci'
exec(filename)
clear
Iyy=2*(ty*a^3)/12 +((b- 2*ty)*tx^3)/12;
deff("[Sz]=f(x)","Sz=M*x/Iyy");
x=[-a/2:0.05:a/2];
fplot2d(x,f);
xgrid(3);
datatipToggle();
xtitle( 'Direct stress', ' -x- ', '-σ z-');
printf("\nσz at the left hand edges of flanges: %f N/mm^2",f(-a/2));
printf("\nσz at the right hand edges of flanges: %f N/mm^2",f(a/2));