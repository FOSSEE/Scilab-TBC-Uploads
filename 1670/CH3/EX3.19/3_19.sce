//Example 3.19
//Gauss Seidel Method
//Page no. 75
clc;clear;close;

x0=0;y0=0;z0=0;
deff('x=f1(y,z)','x=(32-4*y+z)/28')
deff('y=f2(x,z)','y=(35-2*x-4*z)/17')
deff('z=f3(x,y)','z=(24-x-3*y)/10')
for i=1:6
    x0=f1(y0,z0);
    y0=f2(x0,z0);
    z0=f3(x0,y0);
    printf('\tx(%i) = %g\n\n\ty(%i) = %g\n\n\tz(%i) = %g\n\n\n\n',i,x0,i,y0,i,z0)
end
printf('Thus we find that solution converges to %.4f, %.4f and %.4f',x0,y0,z0)