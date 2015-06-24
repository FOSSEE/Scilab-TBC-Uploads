//Example 15.11
//Midpoint Method
//Page no. 518
clc;clear;close;
deff('y=f(x,y)','y=y+x')
y=1;
h=0.2;
printf('i\txi\tyi\tslope1\tslope2\ty(i+1)\n-----------------------------------------------\n')
for i=1:3
    x=(i-1)*h
    s1=f(x,y);
    s2=f(x+h/2,y+s1*h/2);
    printf(' %i\t%g\t%g\t%g\t%g',i-1,x,y,s1,s2)
    y=y+s2*h;
    printf('\t%g\n',y)
end