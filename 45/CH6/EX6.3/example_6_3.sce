//example 6.3 
clc;
clear; 
//a=input("enter the first 8 bit number :");
//b=input("enter the second 8 bit number :");
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
for i=1:8
    c1(i)=car(i)+a1(i)+ b1(i);   // adding the Higher bytes
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
c1(9)=car(9)
re=0;
format('v',18);
for i=1:9
    re=re+(c1(i)*(10^(i-1)))   
end

printf('The sum of lower bytes of two binary numbers is %d\n',re );
printf(' with a carry is %d\n',car(9));
re=re-(c1(9)*(10^(8)))   
for i=9:16    // adding the Higher bytes 
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
format('v',25);
ree=0;
for i=9:17
    ree=ree+(c1(i)*(10^(i-9)));   
end
for i=9:17  
    re=re+(c1(i)*(10^(i-1)))   
end
printf(' The sum of upper  bytes of the given numbers is %d\n',ree);
printf(' with a carry is %d\n',car(17)); // displaying results 
printf(' The total sum is %f',re );