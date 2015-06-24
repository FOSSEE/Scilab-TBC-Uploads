pathname=get_absolute_file_path('25_8.sce')
filename=pathname+filesep()+'25_8data.sci'
exec(filename)
clear
GJ=2*G1*a*(t1^3)/3 +G2*b*(t2^3)/3;
dtheta=T/GJ;
tmax12=2*G1*(t1/2)*dtheta;
tmax23=2*G2*(t2/2)*dtheta;
maximum=tmax23;
if(tmax12>tmax23) then
    maximum=tmax12;
end
printf("\nmaximum shear stress: %f N/mm^2",maximum);
w1=-2*(0.5*a*b/2)*dtheta;
printf("\nw1: %f mm",w1);
X=[0;a],Y=[0,w1],X1=-X,Y1=-Y;
subplot(2,1,1),plot(X,Y),xgrid(3),xtitle('warping in upper flange','x','w');
subplot(2,1,2),plot(X1,Y1),xgrid(3),xtitle('warping in lower flange','x','w');
datatipToggle();
printf("\nclick on the point to view its coordinate on plot");