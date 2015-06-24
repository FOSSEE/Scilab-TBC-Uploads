//Ex.3.2
clc;
clear;
close;
x1=[1 2 3 4];         //assume
x2=[1 2 1 2];         //assume
a=1;
b=1;
c=[5 5 5 5];        //assuming constant value
y=x1+c;             //y(n)=x(n)+c 

//Test for homogeneity
k=2;
hom=0;
for n=1: length (x1)
    if (k*y(n)==k*x1(n)+c(n))
        hom=hom+1;
    end
end

//Test for additivity
for n =1: length (x1)
    x3(n)=a*x1(n)+b*x2(n)
end
for n =1: length (x1)
    y1(n)=x1(n)+c(n);
    y2(n)=x2(n)+c(n);
    y3(n)=x3(n)+c(n);
end
for n =1: length (y1)
    z(n)=a*y1(n)+b*y2(n);
end
count =0;
for n =1: length (y1)
    if(y3(n)==z(n))
    count = count +1;
    end
end
if( count == length (y3) & (hom==length(y)))
    disp ( 'It satisfies the homogeneity and additivity principle' );
    disp ( 'THE GIVEN SYSTEM IS LINEAR ' );
else
    disp ( 'It does not satisfy the homogeneity and additivity principle' );
    disp ( 'THE GIVEN SYSTEM IS NON LINEAR ' );
