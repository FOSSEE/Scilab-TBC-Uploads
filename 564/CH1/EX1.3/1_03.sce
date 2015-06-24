pathname=get_absolute_file_path('1_03.sce')
filename=pathname+filesep()+'1_03data.sci'
exec(filename)
Txy=((lLoad-Sx)*(lLoad-Sy))^0.5;
printf("\nτxy:%f N/mm^2",Txy);
printf(",%f N/mm^2",-Txy);
S=poly(0,'S');
y=(S^2)-(S*(Sx+Sy))+(Sx*Sy)-(Txy^2);
m=roots(y);
printf("\nσ1: %f N/mm^2",m(2,:));
printf("\nσ2:%f N/mm^2",m(1,:));
Tmax=abs((m(2,:)-m(1,:))/2);
printf("\nτmax: %f N/mm^2",Tmax);
//plotting mohr circle
x=abs((m(2,:)+m(1,:))/2);//Centre of circle
plot2d(0,0,-1,"031"," ",[x-Tmax-50,-Tmax-50,x+Tmax+100,Tmax+50]);
xgrid(3);
xarc(x-Tmax,Tmax,2*Tmax,2*Tmax,0,360*64);
x1=[m(1,:),m(2,:)],y1=[0,0];
x2=[Sx,Sy],y2=[Txy,-Txy];
x3=[Sx,Sx],y3=[Txy,0];
x4=[Sy,Sy],y4=[-Txy,0];
x5=[x,x],y5=[Tmax,-Tmax];
plot(x1,y1,x2,y2,'--',x3,y3,'--',x4,y4,'--',x5,y5,'--');
datatipToggle();
printf("\n\nclick on the point to view its coordinate on the plot");
xtitle( 'Mohr’s circle of stress', ' σ (N/mm^2)', ' τ (N/mm^2)', boxed = 1 );