pathname=get_absolute_file_path('3_1.sce')
filename=pathname+filesep()+'3_1data.sci'
exec(filename)
clear
J= (%pi*R^4)/2;
x=poly(0,"x");
y=poly(0,"y");
t= T*R/J;// τ
twistrate= T/(G*J);//rate of twist
deff("[Tzy]=f(x)","Tzy=T*x/J");//τzy
deff("[Tzx]=f1(y)","Tzx=-T*y/J");//τzx
funcprot(0);
function sh=shear(x,y),
    sh=(T/J)*(x^2 +y^2)^0.5;
endfunction
t=linspace(-5,5,50);
clf();
sh=feval(t,t,shear);
plot3d1(t,t,sh);
xtitle('STRESS DISTRIBUTION','X','Y','τ');
x=[-R:0.01:R];
y=[-R:0.01:R];
xset('window',1)
subplot(2,1,1);
fplot2d(x,f);
xgrid(3);
xtitle( 'shear stress', ' -x- ', ' τzy');
subplot(2,1,2);
fplot2d(y,f1,[2]);
xgrid(3);
xtitle( 'shear stress', ' -y-', ' τzx');
datatipToggle();
printf("\nrate of twist: %f",twistrate);
printf("\nτ= %f n/mm^2",t);
printf("\n\nclick on the point to view its coordinate on the plot");