pathname=get_absolute_file_path('6_1.sce')
filename=pathname+filesep()+'6_1data.sci'
exec(filename)
//theta=θ,lambda=λ,mu=μ
theta12=0,lambda12=cos(theta12),mu12=sin(theta12);
theta13=%pi/2,lambda13=cos(theta13),mu13=sin(theta13);
theta23=%pi/2 + atan(L13/L12);lambda23=cos(theta23),mu23=sin(theta23);
L23=(L12^2 +L13^2)^0.5;
LL12=lambda12^2,LM12=lambda12*mu12,MM12=mu12^2;
LL13=lambda13^2,LM13=lambda13*mu13,MM13=mu13^2;
LL23=lambda23^2,LM23=lambda23*mu23,MM23=mu23^2;
K220=[LL12 LM12;LM12 MM12];
K222=(L12/L23)*[LL23 LM23;LM23 MM23];
K210=[-LL12 -LM12;-LM12 -MM12];
K232=(L12/L23)*[-LL23 -LM23;-LM23 -MM23];
K=K220+K222;
F=[FX2;FY2];
V=(L12/AE)*inv(K)*F;
u2=V(1,:),v2=V(2,:);
u1=0;v1=0;u3=0;v3=0;
F1=[K210';K232']*inv(K)*F;
S12=(AE/L12)*[lambda12 mu12]*[u2-u1;v2-v1];
S13=(AE/L13)*[lambda13 mu13]*[u3-u1;v3-v1];
S23=(AE/L23)*[lambda23 mu23]*[u3-u2;v3-v2];
x1=[-L12,-L12],y1=[0,L13];
x2=[-L12,u2],y2=[0,v2];
x3=[-L12,u2],y3=[L13,v2];
plot(x1,y1,x2,y2,x3,y3);
xgrid(3);
datatipToggle();
xtitle( 'framework after deformation', ' -x- ', ' -y- ',boxed = 1);
printf("\n\nu2: %f m",u2);
printf("\nv2: %f m",v2);
printf("\nFx,1: %f N",F1(1,:));
printf("\nFy,1: %f N",F1(2,:));
printf("\nFx,3: %f N",F1(3,:));
printf("\nFy,3: %f N",F1(4,:));
printf("\nS12: %f N",S12);
printf("\nS13: %f N",S13);
printf("\nS23: %f N",S23);
printf("\n\nclick on the point to view its coordinate on the plot");