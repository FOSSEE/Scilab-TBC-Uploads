//Ex.3.5

clc ;
clear;
close;

//Test for shift-variance
k =2;
N =10;
for n =1: N
x(n)=n;
y(n)=x(n)^2;
end
inputshift =[x(N-k)]^2;
outputshift =y(N-k);
if( inputshift == outputshift )
    disp ( 'THE GIVEN SYSTEM IS SHIFT INVARIANT ' )
else
    disp ( 'THE GIVEN SYSTEM IS SHIFT VARIANT ' );
end

//Test for linearity
x1=[1 2 3 4];         //assume
x2=[1 2 1 2];         //assume
a=1;
b=1;
y=[1 4 9 16];          //y(n)=x(n)^2 for all x

        //Test for homogeneity
k=2;
hom=0;
for n=1: length (x1)
    if (k*y(n)==[k*x1(n)]^2)
        hom=hom+1;
    end
end

        //Test for additivity
for n =1: length (x1)
    x3(n)=a*x1(n)+b*x2(n)
end
for n =1: length (x1)
    y1(n)=x(n)^2;
    y2(n)=x(n)^2;
    y3(n)=x(n)^2;
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
