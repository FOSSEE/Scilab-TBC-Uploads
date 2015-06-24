//Example 3-7//
//gray code to binary//
clc
//clears the console//
clear
//clears all existing variables//
a=1011
for i=1: 4
    x(i)=modulo(a,10)
    a=a/10
    a=floor(a)
end
y(4)=x(4)
k=3
while(k>0)
    if bitand(y(k+1),x(k))==1 then
        y(k)=bitcmp(1,1)
    else
        y(k)=bitor(y(k+1),x(k))
    end    
    k=k-1
end
z=0
for i=1: 4
    z=z+y(i)*(10^(i-1))
end
disp('equivalent binary code')
disp(z)
//equivalent binary code is displayed//
