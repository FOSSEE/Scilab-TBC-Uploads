//example 6.9
clc;
clear;
//aaa=input('enter the number(in decimal) :');
aaa=-19750  // given input 
aa=-1*aaa;
format('v',18);
a=0;
q=0;
while(aa>0)             // converting  it to binary
    x=modulo(aa,2);
    a= a + (10^q)*x;
    aa=aa/2;
    aa=floor(aa);
    q=q+1; 
end
for i=1:16
    a1(i)=modulo(a,10);
    a=a/10;
   a=round(a);
    b1(i)=0;
end
b1(1)=1;
for i=1:16             /// finding the 2's compliment 
        a1(i)=bitcmp(a1(i),1);
        end
    car(1)=0;
for i=1:16
    c1(i)=car(i)+a1(i)+ b1(i); 
    if c1(i)== 2 then
        car(i+1)= 1;
        c1(i)=0;
    elseif c1(i)==3 then 
         car(i+1)= 1;
        c1(i)=1;
    else 
        car(i+1)=0;
    end;
end;
c1(17)=car(17);
re=0;
    for i=1:17
        re=re+(c1(i)*(10^(i-1)))   
        end;
         printf('\n The 2''s compliment is');
         disp(re);
         q=1;
b=0;
f=0;                
a=re;
while(a>0)   // converting to hexadecimal
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
printf('\n In Hexadecimal notation is %sH\n\n',hex) ;// displaying the result
disp('As the memory of a first generation microcumputer is orgnised in bytes . The lower byte is stored in 2000 address and the higher byte is stored in 2001 address.');