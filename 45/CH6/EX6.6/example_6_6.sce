//exmple 6.6
clc;
clear; 
a=0;
b=0;
q=0;
//bb=input(" Enter the first no (in decimal) :");
//aa=input(" Enter the number from which first no has to substracted:");
aa=150;
bb=85;
while(aa>0)  //// converting the inputs in to binary numbers     
    x=modulo(aa,2);
    a= a + (10^q)*x;
    aa=aa/2;
    aa=floor(aa);
    q=q+1; 
end
nn=a
q=0;
while(bb>0)             
    x=modulo(bb,2);
    b= b + (10^q)*x;
   bb=bb/2;
    bb=floor(bb);
    q=q+1; 
end
printf(' \nThe binary equivalent of first no is %f\n\n',b);
printf(' The binary equivalent of secnd no is %f\n\n',a);
for i=1:40
    a1(i)=modulo(a,10);
    a=a/10;
    a=round(a);
    b1(i)=modulo(b,10);
    b=b/10;
    b=round(b);
end

bro(1)=0;
for i=1:40
    c1(i)=a1(i)- b1(i)-bro(i);
    if c1(i)== -1 then
        bro(i+1)= 1;
        c1(i)=1;
    elseif c1(i)==-2 then 
         bro(i+1)= 1;
        c1(i)=0;
    else 
        bro(i+1)=0;
    end
    
end
re=0;
format('v',18);
for i=1:40
    re=re+(c1(i)*(10^(i-1))) 
end
printf(' The diference of given two numbers is %f\n\n',re );
q=1;
b=0;
f=0;                
a=re;
while(a>0) // converting the binary result to decimal then to hexadecimal
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
printf(' Sum in decimal notation is %d\n\n',f);
printf(' Sum in hexadecimal notation is %s \n',hex);