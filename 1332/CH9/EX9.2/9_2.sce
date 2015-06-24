//Example 9.2
//Curve Fitting
//Page no. 293
clc;clear;close;
x(1)=0.25;
for i=2:6
    x(1,i)=x(1,i-1)+0.25;
end               //x values
y(1,1)=3.1;y(1,2)=1.7;y(1,3)=1;y(1,4)=0.68;y(1,5)=0.42;y(1,6)=0.26; //y values

//construction of normal equations
for i=1:6
    Y(1,i)=log10(y(1,i));
end
Ex=0;
for i=1:6
    Ex=Ex+x(1,i);
end
EY=0;
for i=1:6
    EY=EY+Y(1,i);
end
Ex2=0;
for i=1:6
    Ex2=Ex2+x(1,i)^2;
end
ExY=0;
for i=1:6
    ExY=ExY+x(1,i)*Y(1,i);
end
printf('E x(k)\t\t y(k)\t\tE Y(k)\t\tE x2(k)\t\tE x(k)*Y(k)')
printf('\n----------------------------------------------------------------------------')
for i=1:6
    printf('\n%f\t%f\t%f\t%f\t%f',x(1,i),y(1,i),Y(1,i),x(1,i)^2,x(1,i)*Y(1,i))
end
printf('\n----------------------------------------------------------------------------')
printf('\n%f\t%f\t%f\t%f\t%f',Ex,0,EY,Ex2,ExY)
printf('\n----------------------------------------------------------------------------\n\n')
A=[6,Ex;Ex,Ex2];      //system of normal equations
B=[EY;ExY];
X=inv(A)*B;
a=exp(X(1,1));
b=-1*X(2,1);
for i=1:2
    for j=1:2
        printf('%f    ',A(i,j))
    end
    if(i==1)
        printf('  *')
    end
    
    printf('\ta%i',i);
    if(i==1)
        printf('  =')
    end
    
    printf('\t%f\n',B(i,1))
end
printf('\n\na1=%f\na2=%f\n\na=%f\nb=%f\n\n',X(1,1),X(2,1),a,b)
printf('The fitted curve is:\n            %fx\ny=%f e',b,a)