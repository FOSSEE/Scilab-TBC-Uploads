//Example 10.9
//Picard Method
//Page no. 313
clc;clear;close;
x=poly(0,'x')
deff('y=f1(x,y)','y=x^2')
deff('y=f2(x,y)','y=2*x*y')
y(1)=0;
h=poly(0,'x')
for i=1:4
    for j=1:i
        if j==1 then
            y1(j)=y(1)+integrate('f1(x,y(j))','x',0,1)
        else
            y1(j)=integrate('f2(x,y1(j)*(x^(2*j-1)))','x',0,1)
        end
    end
    
    printf("\n\n y%i = ",i)
    for j=1:i
        if j==i then
            printf("x^%i * %g",2*j+1,y1(j))
        else
            printf("x^%i * %g + ",2*j+1,y1(j))
        end
    end
    for j=i:-1:1
        y1(j+1)=y1(j)
    end
end