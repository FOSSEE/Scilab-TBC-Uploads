pathname=get_absolute_file_path('18_3.sce')
filename=pathname+filesep()+'18_3data.sci'
exec(filename)
clear
J=(2*a*ty^3 + b*tx^3)/3;
if(tx>ty) then
    tmax=tx*T/J;
else
    tmax=ty*T/J;
end
printf("\nmaximum shear stress: %f N/mm^2",tmax);
Ixx=a*ty*b*b/2 +(tx*b^3)/12;
Es=(ty*(a*b)^2)/(4*Ixx);
deff("[W32]=f(s1)","W32=-2*(T/(J*G))*(0.5*Es*s1)");
deff("[W21]=f1(s2)","W21=-2*(T/(J*G))*(0.5*Es*a -0.5*a*s2)");
deff("[W43]=f2(s2)","W43=2*(T/(J*G))*(0.5*Es*a -0.5*a*s2)");
deff("[Sz]=f3(s1)","Sz=0*s1");
deff("[Sz1]=f4(s2)","Sz1=0*s2");
s1=[-b/2:0.05:b/2];
s2=[0:0.05:a];
subplot(3,1,1)
fplot2d(s2,f1)
fplot2d(s2,f4)
xgrid(3);
xtitle( 'Wraping in 2-1', ' -x- ', '-w-');
subplot(3,1,2)
fplot2d(s1,f)
fplot2d(s1,f3)
xgrid(3);
xtitle( 'Wraping in 3-2', ' -y- ', '-w-');
subplot(3,1,3)
fplot2d(s2,f2)
fplot2d(s2,f4)
xgrid(3);
xtitle( 'Wraping in 4-3', ' -x- ', '-w-');
datatipToggle();
printf("\nclick on the point on the plot to view its coordinates")
