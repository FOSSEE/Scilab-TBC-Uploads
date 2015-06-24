//curve fitting by sum of exponentials
//example 4.8
//page 137
clc;clear;close;
x=[1 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1. 1.9];
y=[1.54 1.67 1.81 1.97 2.15 2.35 2.58 2.83 3.11];
s1=y(1)+y(5)-2*y(3);
h=x(2)-x(1);
I1=0;
for i=1:3
    if i==1|i==3 then
       I1=I1+y(i)
 
  elseif (modulo(i,2))==0 then
           I1=I1+4*y(i)
       
   elseif (modulo(i,2))~=0 then
          I1=I1+2*y(i) 
           end
    end
    I1=(I1*h)/3

I2=0;
for i=3:5
    if i==3|i==5 then
       I2=I2+y(i)
 
  elseif (modulo(i,2))==0 then
           I2=I2+4*y(i)
       
   elseif (modulo(i,2))~=0 then
          I2=I2+2*y(i) 
           end
    end
    I2=(I2*h)/3;
    for i=1:5
        y1(i)=(1.0-x(i))*y(i);
    end
    for i=5:9
        y2(i)=(1.4-x(i))*y(i);
    end
I3=0;
for i=1:3
    if i==1|i==3 then
       I3=I3+y1(i)
 elseif (modulo(i,2))==0 then
           I3=I3+4*y1(i)
       elseif (modulo(i,2))~=0 then
          I3=I3+2*y1(i) 
           end
    end
    I3=(I3*h)/3
I4=0;
for i=3:5
    if i==3|i==5 then
       I4=I4+y2(i)
 
  elseif (modulo(i,2))==0 then
           I4=I4+4*y2(i)
       
   elseif (modulo(i,2))~=0 then
          I4=I4+2*y2(i) 
           end
    end
    I4=(I4*h)/3;
    s2=y(5)+y(9)-2*y(7);
I5=0;
for i=5:7
    if i==5|i==7 then
       I5=I5+y(i)
 elseif (modulo(i,2))==0 then
           I5=I5+4*y(i)
       
   elseif (modulo(i,2))~=0 then
          I5=I5+2*y(i) 
           end
    end
    I5=(I5*h)/3;
I6=0;
for i=7:9
    if i==7|i==9 then
       I6=I6+y(i)
 
  elseif (modulo(i,2))==0 then
           I6=I6+4*y(i)
       
   elseif (modulo(i,2))~=0 then
          I6=I6+2*y(i) 
           end
    end
I6=(I6*h)/3;
I7=0;
for i=5:7
    if i==5|i==7 then
       I7=I7+y2(i)
 
  elseif (modulo(i,2))==0 then
           I7=I7+4*y2(i)
       
   elseif (modulo(i,2))~=0 then
          I7=I7+2*y2(i) 
           end
    end
    I7=(I7*h)/3;
I8=0;
for i=7:9
    if i==7|i==9 then
       I8=I8+y2(i)
 
  elseif (modulo(i,2))==0 then
           I8=I8+4*y2(i)
       
   elseif (modulo(i,2))~=0 then
          I8=I8+2*y2(i) 
           end
    end
    I8=(I8*h)/3;
A=[1.81 2.180;2.88 3.104];
C=[2.10;3.00];
Z=A^-1*C
X=poly(0,'X');
y=X^2-Z(1,1)*X-Z(2,1);
R=roots(y)
printf(' the unknown value of equation is %1.0f   %1.0f',R(1,1),R(2,1));
