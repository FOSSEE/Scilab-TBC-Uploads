pathname=get_absolute_file_path('3_2.sce')
filename=pathname+filesep()+'3_2data.sci'
exec(filename)
clear
J= (%pi*a^3 *b^3)/(a^2 +b^2);
twistrate= T/(G*J);//rate of twist
x=poly(0,"x");
y=poly(0,"y");
deff("[Tzy]=f(x)","Tzy=2*T*x/(%pi*b*a^3)");//τzy
deff("[Tzx]=f1(y)","Tzx=-2*T*y/(%pi*a*b^3)");//τzx
function w=wrap(x,y),
    w=((T*(b^2 -a^2))/(%pi*a^3 *b^3 *G))*x*y*1000;//warping
endfunction
t=linspace(-a,a,10*a);
clf();
w=feval(t,t,wrap);
plot3d1(t,t,w);
xtitle('wraping of cross section','x','y','w * 10^3');
x=[-a:0.01:a];
y=[-b:0.01:b];
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
printf("\n\nclick on the point to view its coordinate on the plot");