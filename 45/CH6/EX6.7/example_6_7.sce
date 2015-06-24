//example 6.7 
clc;
clear; 
a=0;
b=0;
q=0;
//aa=input(" Enter the first no (in decimal) :");
//bb=input(" Enter the number from which first no has to substracted:");
aa=175;
bb=118;
while(aa>0)    // converting the inputs in to binary numbers 
    x=modulo(aa,2);
    a= a + (10^q)*x;
    aa=aa/2;
    aa=floor(aa);
    q=q+1; 
end
q=0;
while(bb>0)             
    x=modulo(bb,2);
    b= b + (10^q)*x;
   bb=bb/2;
    bb=floor(bb);
    q=q+1; 
end
printf(' \n The binary equivalent of first no is %f\n\n',a);
printf(' The binary equivalent of secnd no is %f\n\n',b);
for i=1:8
    a1(i)=modulo(a,10);
    a=a/10;
    a=round(a);
    b1(i)=modulo(b,10);
    b=b/10;
    b=round(b);
end

car(1)=0;
for i=1:8
    c1(i)=car(i)+a1(i)+ b1(i);//adding the binary numbers (binary addtion)
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
c1(9)=car(9);
re=0;
format('v',18);
for i=1:8
    re=re+(c1(i)*(10^(i-1)))   
end
printf('If only 8 bits are taken the result will be as shown below \n\n');
printf(' and the sum of given two binary numbers will be %f\n\n',re );
q=1;
b=0;
f=0;                
a=re;
while(a>0) //converting the binary output to hexadecimal
    r=modulo(a,10);
    b(1,q)=r;
    a=a/10;
    a=floor(a);
    q=q+1;
end
for m=1:q-1
     c=m-1;
    f = f + b(1,m)*(2^c);
end
printf(' Sum in decimal notation is %d\n\n',f);
hex=dec2hex(f);
printf(' The sum in hexadecimal notation is %sH \n',hex);
printf(' \n with an overflow of %d\n\n',car(9));