
clc;
clear;
//Example 25.29
//addition of negative number by by two's complement method
//bb=input(" Enter the first no (in decimal) :");
//aaa=input(" Enter the negative number that has to be added");
bb=14;
aaa=-7;
if aaa<0 then
    aa=-1*aaa;
else aa=aaa;
end
a=0;
b=0;
q=0;
for i=1:5            //converting from decimal to binary 
    x=modulo(aa,2);
    a= a + (10^q)*x;
    aa=aa/2;
    aa=floor(aa);
    q=q+1; 
end
q=0;
for i=1:5   //converting from decimal to binary         
    y=modulo(bb,2);
    b= b + (10^q)*y;
    bb=bb/2;
    bb=floor(bb);
    q=q+1; 
end
for i=1:5
    a1(i)=modulo(a,10);
    a=a/10;
    a=round(a);
   
end
for i=1:5
   b1(i)=modulo(b,10);
    b=b/10;
    b=round(b);
end;
if aaa<0 then// making one's complement of the negative number
    for i=1:5
        a1(i)=bitcmp(a1(i),1);
    end
    
    car(1)=0;
    
for i=1:5
    c1(i)=a1(i)+b1(i)+car(i);
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
re=0;
format('v',18);
    for i=1:5
        re=re+(c1(i)*(10^(i-1))) //result of one's complement addition  
    end;
for i=1:5
   s(i)=modulo(re,10);
    re=re/10;
    re=round(re);
end;
if car(6)==1 then// checking carry
    car2(1)=1;
  
for i=1:5
 re1(i)=s(i)+car2(i);//addition of carry after one's complement addition
    if re1(i)== 2 then
        car2(i+1)= 1;
        re1(i)=0;
    elseif re1(i)==3 then 
         car2(i+1)= 1;
        re1(i)=1;
    else 
        car2(i+1)=0;
    end;
end;

 re2=0;
format('v',18);
    for i=1:5
        re2=re2+(re1(i)*(10^(i-1)))   
    end;  

 disp(re2,'difference is') ;
 
else 
    for i=1:5
        re1(i)=bitcmp(s(i),1);
    end
    re2=0;
    for i=1:5
        re2=re2+(re1(i)*(10^(i-1)))
    end;
    re2=-1*re2;
    disp(re2,'difference is') ;
    end;
      
   