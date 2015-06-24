//exmple 6.2
clc;
clear; 
//a=input("enter the first 16 bit binary number :");
//b=input("enter the second 16 bit binarynumber :");
a=0000111110101100;
b=0011100001111111;
for i=1:16
    a1(i)=modulo(a,10);
    a=a/10;
    a=round(a);
    b1(i)=modulo(b,10);
    b=b/10;
    b=round(b);
end
car(1)=0;
for i=1:16     /// adding both the 16-bit inputs (binary addition)
    c1(i)=car(i)+a1(i)+ b1(i);
    if c1(i)== 2 then
        car(i+1)= 1;
        c1(i)=0;
    elseif c1(i)==3 then 
         car(i+1)= 1;
        c1(i)=1;
    else 
        car(i+1)=0;
    end
end
c1(17)=car(17);
re=0;
format('v',25);
for i=1:17
    re=re+(c1(i)*(10^(i-1)))
end
printf('The sum of given two binary numbers is %f\n',re );
q=1;
b=0;
f=0;                
a=re;
while(a>0)    // converting the result to a hexadecimal no
    r=modulo(a,10);
    b(1,q)=r;
    a=a/10;
    a=floor(a);
    q=q+1;
end
for m=1:q-1
     c=m-1
    f = f + b(1,m)*(2^c);
end
hex=dec2hex(f);
printf(' Sum in decimal notation is %d\n',f);
printf(' Sum in hexadecimal notation is %s \n',hex); //displaying result  