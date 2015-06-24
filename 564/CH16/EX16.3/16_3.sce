pathname=get_absolute_file_path('16_3.sce')
filename=pathname+filesep()+'16_3data.sci'
exec(filename)
clear
Iyy=2*(ty*a^3)/12 +((b- 2*ty)*tx^3)/12;
Ixx=(a*b^3)/12 - ((a-tx)*(b-2*ty)^3)/12;
Mx=M*cos(theta),My=M*sin(theta);
alpha=(atan((My/Iyy)/(Mx/Ixx)))*180/%pi;
deff("[Sz1]=f(x)","Sz1=((Mx/Ixx)*(b/2))-((My/Iyy)*x)");
deff("[Sz2]=f1(x)","Sz2=((Mx/Ixx)*(-b/2))-((My/Iyy)*x)");
deff("[Sz3]=f2(y)","Sz3=((Mx/Ixx)*y)");
deff("[Sz4]=f3(x)","Sz4=0*x");
deff("[Sz5]=f4(y)","Sz5=0*y");
funcprot();
y=[-b/2:0.05:b/2];
x=[-a/2:0.05:a/2];
funcprot(0);
subplot(3,1,1);
fplot2d(x,f);
fplot2d(x,f3);
xgrid(3);
xtitle( 'Direct stress in upper flange', ' -x- ', '-σz-');
subplot(3,1,3);
fplot2d(x,f1);
fplot2d(x,f3);
xgrid(3);
xtitle( 'Direct stress in lower flange', ' -x- ', '-σz-');
subplot(3,1,2);
fplot2d(y,f2);
fplot2d(y,f4);
xgrid(3);
xtitle( 'Direct stress in web', ' -y- ', '-σz-');
datatipToggle();
printf("\nclick on the point on the plot to view its coordinates");

