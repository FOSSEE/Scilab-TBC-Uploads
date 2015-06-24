//Example 2-35//
//-4 in two's complement by third method//
clc
//clears the console//
clear
//clears all existing variables//
a=00000100
c=0
z=0
for i=1: 8
    x(i)=modulo(a,10)
    a=a/10
    a=floor(a)
end    
for i=1: 8
    if c>1 then
       break 
    end
    if x(i)==1 then
        for k=i+1: 8
        x(k)=bitcmp(x(k),1)
        c=c+1 
        end
    end
end
for i=1: 8
    z=z+x(i)*10^(i-1)
end 
disp('-4 in twos complement is :')
disp(z)
//answer is displayed//  
