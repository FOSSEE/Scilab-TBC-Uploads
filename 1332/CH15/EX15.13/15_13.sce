//Example 15.13
//Single Step Method
//Page no. 521
clc;clear;close;

deff('y=f(x)','y=x^2')
deff('y=f1(x)','y=1/(1-x)')
y=1;h=0.2;
printf('n\tXn\tYn (by single-step method)\tYn (computed)\n-----------------------------------------------------------------\n')
for i=1:6
    x=(i-1)*h
    if i<6 then
        printf(' %i\t%.2f\t%.5f\t\t\t\t%.5f\n',i-1,x,y,f1(x))
    else
        printf(' %i\t%.2f\t%.5f\t\t\t\t \n',i-1,x,y)
    end
    y=y+h*f(y);
end