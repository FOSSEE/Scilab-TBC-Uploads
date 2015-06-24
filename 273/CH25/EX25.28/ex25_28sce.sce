clc;
clear;
//example25.28
//finiding two's complement
//a=input(" Enter the number (binary) :");
a=1010;
for i=1:4
    a1(i)=modulo(a,10);
    a=a/10;
    a=round(a);
   
end
for i=1:4//making one's complement of number
    a1(i)=bitcmp(a1(i),1);
end
for i=1:4
car(1)=1;
re(i)=a1(i)+car(i);//addition of one to one's complement to contain two's complement
    if re(i)== 2 then
        car(i+1)= 1;
        re(i)=0;
    elseif re(i)==3 then 
         car(i+1)= 1;
        re(i)=1;
    else 
        car(i+1)=0;
    end;
end;

 re2=0;
format('v',18);
    for i=1:4
        re2=re2+(re(i)*(10^(i-1)))   
    end;  
disp(re2,'two s complement is');  