//Example 3.16
//Jacobi Method
//Page no. 72
clc;clear;close;

x0=0;y0=0;z0=0;
deff('x=f1(y,z)','x=(y-z+10)/5')
deff('y=f2(x,z)','y=(-2*x+z+11)/8')
deff('z=f3(x,y)','z=(x-y+3)/4')
for i=1:13
    x1=f1(y0,z0);
    y1=f2(x0,z0);
    z1=f3(x0,y0);
    printf('\tx(%i) = %g\n\n\ty(%i) = %g\n\n\tz(%i) = %g\n\n\n\n',i,x1,i,y1,i,z1)
    x0=x1;y0=y1;z0=z1;
end
printf('Thus we find that solution converges to %g,%g and %g',x0,y0,z0)