pathname=get_absolute_file_path('1_05.sce')
filename=pathname+filesep()+'1_05data.sci'
exec(filename)
Ex= (1/E)*(Sx-v*Sy);//εx
Ey= (1/E)*(Sy-v*Sx);//εy
G=E/(2*(1+v));//shear modulus
Gxy=Txy/G;//γxy
printf("\n εx:  %f",Ex);
printf("\n εy: %f",Ey);
printf("\n G: %f",G);
printf("\nγxy:  %f",Gxy);
PE1=(Ex+Ey)/2 + 0.5*((Ex-Ey)^2 +Gxy^2)^0.5;//εI
PE2=(Ex+Ey)/2 - 0.5*((Ex-Ey)^2 +Gxy^2)^0.5;//εII
theta=0.5*atan(Gxy/(Ex-Ey)) *(180/%pi);//θ in degree
printf("\n εI:  %f",PE1);
printf("\nεII: %f",PE2);
printf("\n  θ:  %f degree",theta);
printf("\n  θ:  %f degree",theta+90);
//plotting mohr circle
x=abs((PE1+PE2)/2);//Centre
r=(abs(PE1)+abs(PE2))/2;//radius
plot2d(0,0,-1,"031"," ",[x- 1.5*r,-1.5*r,x+ 1.5*r,1.5*r]);
xgrid(3);
xarc(x-r,r,2*r,2*r,0,360*64);
x1=[PE1,PE2],y1=[0,0];
x2=[Ex,Ey],y2=0.5*[Gxy,-Gxy];
theta1=atan(Gxy/(2*Ex)) *(180/%pi);
plot(x1,y1);
plot(x2,y2);
xarc(x-r/4,r/4,r/2,r/2,0,theta1*64);
xarc(x-r/2,r/2,r,r,180*64,(180+theta1)*64);
datatipToggle();
printf("\n\nclick on the point to view its coordinate on the plot");
xtitle( 'Mohr’s circle of strain', ' ε', ' γ (gamma)', boxed = 1 );