pathname=get_absolute_file_path('18_2.sce')
filename=pathname+filesep()+'18_2data.sci'
exec(filename)
clear
del=2*((b/tb)+(a/ta));//δ
A=a*b;
deff("[W41]=f(s1)","W41=(T/(2*A*G))*((s1/tb)+(del*a*s1/(4*A)))");
deff("[W12]=f1(s2)","W12=(T/(2*A*G))*((s2/ta)+(del*b*s2/(4*A)))");
deff("[W23]=f2(s1)","W23=-((T/(2*A*G))*((s1/tb)+(del*a*s1/(4*A))))");
deff("[W34]=f3(s2)","W34=-((T/(2*A*G))*((s2/ta)+(del*b*s2/(4*A))))");
deff("[Sz]=f4(s1)","Sz=0*s1");
deff("[Sz1]=f5(s2)","Sz1=0*s2");
funcprot(0);
s1=[-b/2:0.05:b/2];
s2=[-a/2:0.05:a/2];
subplot(2,2,1)
fplot2d(s1,f)
fplot2d(s1,f4)
xgrid(3);
xtitle( 'Wraping in 4-1', ' -y- ', '-w-');
subplot(2,2,2)
fplot2d(s2,f1)
fplot2d(s2,f5)
xgrid(3);
xtitle( 'Wraping in 1-2', ' -x- ', '-w-');
subplot(2,2,3)
fplot2d(s1,f2)
fplot2d(s1,f4)
xgrid(3);
xtitle( 'Wraping in 2-3', ' -y- ', '-w-');
subplot(2,2,4)
fplot2d(s2,f3)
fplot2d(s2,f5)
xgrid(3);
xtitle( 'Wraping in 3-4', ' -x- ', '-w-');
datatipToggle();
printf("\nclick on the point on the plot to view its coordinates")
