//Example 3.18
//Gauss Seidel Method
//Page no. 74
clc;clear;close;

x0=0;y0=0;z0=0;
deff('x=f1(y,z)','x=(110-y-z)/54')
deff('y=f2(x,z)','y=(72-2*x-6*z)/15')
deff('z=f3(x,y)','z=(85+x-6*y)/27')
for i=1:5
    x0=f1(y0,z0);
    y0=f2(x0,z0);
    z0=f3(x0,y0);
    printf('\tx(%i) = %g\n\n\ty(%i) = %g\n\n\tz(%i) = %g\n\n\n\n',i,x0,i,y0,i,z0)
end
printf('Thus we find that solution converges to %.3f, %.3f and %.3f',x0,y0,z0)