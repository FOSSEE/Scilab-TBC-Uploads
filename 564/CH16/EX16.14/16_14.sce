pathname=get_absolute_file_path('16_14.sce')
filename=pathname+filesep()+'16_14data.sci'
exec(filename)
Ixx=(t*h^3)/3;
Iyy=(t*h^3)/12;
Ixy=(t*h^3)/8;
P=Mx/(Ixx*Iyy -Ixy*Ixy);
deff("[Sz1]=f(x)","Sz1=P*(Iyy*h*0.5 -Ixy*x)");//distribution of direct stress in top flange
deff("[Sz2]=f1(y)","Sz2=P*(Iyy*y)");//distribution of direct stress in web
deff("[Sz3]=f2(x1)","Sz3=P*(-Iyy*h*0.5 -Ixy*x1)");//distribution of direct stress in top flange
deff("[Sz4]=f3(x)","Sz4=0*x");
deff("[Sz5]=f4(y)","Sz5=0*y");
y=[-h/2:0.05:h/2];
x=[0:0.05:h/2];
x1=[-h/2:0.05:0];
funcprot(0);
subplot(3,1,1);
fplot2d(x,f);
fplot2d(x,f3);
xgrid(3);
xtitle( 'Direct stress in upper flange', ' -x- ', '-σz-');
subplot(3,1,2);
fplot2d(y,f1);
fplot2d(y,f4);
xgrid(3);
xtitle( 'Direct stress in web', ' -y- ', '-σz-');
subplot(3,1,3);
fplot2d(x1,f2);
fplot2d(x1,f3);
xgrid(3);
xtitle( 'Direct stress in bottom flange', ' -y- ', '-σz-');
datatipToggle();
