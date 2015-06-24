//exmple 6.12
clc;
clear;
//a=input('Enter the first number A (4 bit ) :');
//b=input('Enter the first number B (4 bit ) :');
a=1111;// given values for a and b 
b=0001;
for i=1:4
    a1(i)=modulo(a,10);
    a=a/10;
   a=round(a);
    b1(i)=modulo(b,10);
    b=b/10;
   b=round(b);
end
for i=1:4   //finding the generate and propagate values for ech bit
    g(i)=bitand(a1(i),b1(i));
    p(i)=bitor(a1(i),b1(i));
end
c(1)=0;
for i=1:4  // finding the carry 
    c(i+1)= bitor(g(i),bitand(p(i),c(i)));
end
printf('The final carry is C3 = %d', c(5));//displaying the result 