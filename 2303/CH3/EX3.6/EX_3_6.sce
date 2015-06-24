//Ex.3.6

clc ;
clear;
close;
//since in Scilab,the index starts from 1, we write the above system as y(n+1)=x(n)
//Test for shift-variance
k =2;
N =10;
for n =1: N
x(n)=n;
y(n+1)=x(n);
end
inputshift =x(N-k);
outputshift =y(N+1-k);
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
y=[0 1 2 3];          //y(n)=x1(n-1)

        //Test for homogeneity
k=2;
hom=0;
for n=1: length (x1)-1
  if (k*y(n+1)==k*x1(n))
    hom=hom+1;
end
end

        //Test for additivity
for n =1: length (x1)
    x3(n)=a*x1(n)+b*x2(n)
end
for n =1: length (x1)-1
    y1(n+1)=x1(n);
    y2(n+1)=x2(n);
    y3(n+1)=x3(n);
end
for n =1: length (y1)-1
    z(n+1)=a*y1(n+1)+b*y2(n+1);
end
count =0;
for n =1: length (y1)-1
    if(y3(n+1)==z(n+1))
    count = count +1;
    end
end
if(( count == length (y3)-1) & (hom==length(y)-1))
    disp ( 'It satisfies the homogeneity and additivity principle' );
    disp ( 'THE GIVEN SYSTEM IS LINEAR ' );
else
    disp ( 'It does not satisfy the homogeneity and additivity principle' );
    disp ( 'THE GIVEN SYSTEM IS NON LINEAR ' );
end
