
clc;
clear;
//example 25.27
//substarction by one's complement method
//a=input(" Enter the first no (binary) :");
//b=input(" Enter the number from which first no has to be substracted:");
a=10011;
b=10001;
q=0;

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
for i=1:5//making one's complement of number to be substracted
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
   re2= -1*re2;
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
            
   