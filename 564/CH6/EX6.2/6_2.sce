pathname=get_absolute_file_path('6_2.sce')
filename=pathname+filesep()+'6_2data.sci'
exec(filename)
F=[-W;M;0;0];
P=EI*[(27/(2*L^3)) (9/(2*L^2)) (6/L^2) -(3/(2*L^2));
   (9/(2*L^2)) (6/L) (2/L) (1/L);
   (6/L^2) (2/L) (4/L) 0;
   -(3/(2*L^2)) (1/L) 0 (2/L)];
V=inv(P)*F;
Sy12= EI*(-(6*V(3)/(L^2))-(12*V(1)/(L^3)) -(6*V(2)/(L*L)));//Sy,12
deff("[M12]=f(x)","M12=EI*(((-6*x/L*L)+(4/L))*V(3) + ((-12*x/L^3)+(6/L^2))*V(1) +((-6*x/L*L)+(2/L))*V(2))");
x=[0:0.05:L];
fplot2d(x,f);
xgrid(3);
xtitle( 'M12 versus x', ' -x- ', 'M12');
datatipToggle();
printf("\nυ2: %f m",V(1));//v2
printf("\nθ2: %f ",V(2));//θ2
printf("\nθ2: %f ",V(3));//θ1
printf("\nθ2: %f ",V(4));//θ3
printf("\nSy,12: %f",Sy12);//Sy,12