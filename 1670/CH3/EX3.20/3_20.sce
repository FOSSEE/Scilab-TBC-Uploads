//Example 3.20
//Gauss Seidel Method
//Page no. 75
clc;clear;close;

x0=0;y0=0;z0=0;
deff('x=f1(y,z)','x=(17-y+2*z)/20')
deff('y=f2(x,z)','y=(-18-3*x+z)/20')
deff('z=f3(x,y)','z=(25-3*x+3*y)/20')
for i=1:3
    x0=f1(y0,z0);
    y0=f2(x0,z0);
    z0=f3(x0,y0);
    printf('\tx(%i) = %g\n\n\ty(%i) = %g\n\n\tz(%i) = %g\n\n\n\n',i,x0,i,y0,i,z0)
end
printf('Thus we find that solution converges to %.1g, %.1g and %.1g',x0,y0,z0)