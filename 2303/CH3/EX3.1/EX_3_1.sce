//Ex.3.1
clc;
clear;
close;
x1=[1 2 3 4];         //assume
x2=[1 2 1 2];         //assume
a=1;
b=1;
y=[2 2 2 2];          //y(n)=2 for all x

//Test for homogeneity
k=2;
hom=0;
for n=1: length (x1)
    if (k*y(n)==k*x1(n))
        hom=hom+1;
    end
end

//Test for additivity
for n =1: length (x1)
    x3(n)=a*x1(n)+b*x2(n)
end
for n =1: length (x1)
    y1(n)=2;
    y2(n)=2;
    y3(n)=2;
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
