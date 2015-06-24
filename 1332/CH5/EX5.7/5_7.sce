//Example 5.7
//Aitkens Method
//Page no. 161
clc;clear;close;
deff('x=f(x)','x=exp(-x)')
printf('n\tx0\t\tx1\t\tx2\t\tx3\t\ty\t\tdx0\n')
printf('-----------------------------------------------------------------------------------------------------\n')
x0=0.5;e=0.0001
for i=1:3
    x1=f(x0);x2=f(x1);x3=f(x2);
    y=x3-((x3-x2)^2)/(x3-2*x2+x1)
    dx0=y-x0;
    
    printf(' %i\t%.10f\t%.10f\t%.10f\t%.10f\t%.10f\t%.10f\n',i,x0,x1,x2,x3,y,dx0)
    x0=y;
    if abs(x0)<e then
        break;
    end
end
printf('\n\nThe solution of this equation after %i Iterations is %.10f',i,y)