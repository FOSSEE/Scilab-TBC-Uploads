//example 6.8
clc;
clear;
re=0;
aaa=input('enter the number(in decimal) :');// taking the signed number 
m=aaa;
if aaa<0 then
    aa=-1*aaa;
    else aa=aaa;
end
a=0;
q=0;
while(aa>0)             //converting from decimal to binary 
    x=modulo(aa,2);
    a= a + (10^q)*x;
    aa=aa/2;
    aa=floor(aa);
    q=q+1; 
end
mm=a;
for i=1:8
    a1(i)=modulo(a,10);
    a=a/10;
    a=round(a);
    b1(i)=0;
end
b1(1)=1;
if aaa<0 then  // making two's complement if the number is less than zero
    for i=1:8
        a1(i)=bitcmp(a1(i),1);
        end
    car(1)=0;
for i=1:8
    c1(i)=car(i)+a1(i)+ b1(i);  // adding one (as a part of finding 2's compliment
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
c1(9)=car(9);
re=0;
format('v',18);
    for i=1:9
        re=re+(c1(i)*(10^(i-1)))   
        end;
         printf('\nThe binary contents are %d\n\n',re );
else 
    re=mm;
   end;
   if(aaa>0)
  printf('\nThe biary contents are %d\n\n',mm);
end;
q=1;
b=0;
f=0;                
a=re;
while(a>0)  // converting the result to decimal then to hexadecimal 
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
printf('The Hexadecimal contents are %sH',hex) ;//displayin the result 