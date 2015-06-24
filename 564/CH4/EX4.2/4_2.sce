pathname=get_absolute_file_path('4_2.sce')
filename=pathname+filesep()+'4_2data.sci'
exec(filename)
M=(W*a*(L-a))/(L);
deff("[y]=f(x)","y=(W*x*(L-x))/(L)")//manding moment
x=[0:0.05:L];
fplot2d(x,f);
xgrid(3);
datatipToggle();
xtitle( 'Banding Moment versus a', ' -a- ', '-M-');
printf("\nMB: %f N.m",M);
printf("\n\nclick on the point to view its coordinate on the plot");