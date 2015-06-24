pathname=get_absolute_file_path('4_4.sce')
filename=pathname+filesep()+'4_4data.sci'
exec(filename)
clear
Vb=(w*L^4)/(8*E*I);//υB
deff("[y]=f(x)","y= -((w*x^2)/(24*E*I))*(6*L^2 -4*L*x +x^2)");//deflection
x=[0:0.05:L];
fplot2d(x,f);
xgrid(3);
datatipToggle();
xtitle( 'vertical deflection versus x', ' -x- ', 'vertical deflection');
printf("\nυB: %f m//",Vb);
printf("\n\nclick on the point to view its coordinate on the plot");