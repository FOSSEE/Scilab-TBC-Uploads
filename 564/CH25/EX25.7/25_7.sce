pathname=get_absolute_file_path('25_7.sce')
filename=pathname+filesep()+'25_7data.sci'
exec(filename)
clear
A=l*b;
q=T/(2*A);
P=(2*b/(t1*Gc))+(2*l/(t2*Gw));
w=q*((0.5*l/(Gw*t2))- 0.25*P);
X1=0.5*[l,-l],Y1=[w,-w];
X2=0.5*[l,-l],Y2=[-w,w];
X3=0.5*[b,-b],Y3=[w,-w];
X4=0.5*[b,-b],Y4=[-w,w];
subplot(2,2,1)
plot(X1,Y1),xgrid(3),xtitle('warpinr in 2-3(mm)','y','w')
subplot(2,2,2)
plot(X2,Y2),xgrid(3),xtitle('warpinr in 1-4(mm)','y','w')
subplot(2,2,3)
plot(X3,Y3),xgrid(3),xtitle('warpinr in 2-1(mm)','x','w')
subplot(2,2,4)
plot(X4,Y4),xgrid(3),xtitle('warpinr in 3-4(mm)','x','w')
datatipToggle();
printf("\nW1: %f mm",w);
printf("\nclick on the point to view its coordinate on plot")
