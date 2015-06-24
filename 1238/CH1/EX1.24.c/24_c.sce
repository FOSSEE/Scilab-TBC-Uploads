//binary to gray code//
//Example 24.c//
//binary to gray code//
clc
//clears the console//
clear
//clears all existing variables//
a=1110010
for i=1:7
    x(i)=modulo(a,10)
    a=a/10
    a=floor(a)
end
y(7)=x(7)
k=6
while(k>0)
    if (bitand(x(k+1),x(k))==1) then
    a=bitand(x(k+1),x(k))
    y(k)=bitcmp(a,1)
else
    y(k)=bitor(x(k+1),x(k))
    end
    k=k-1
end           
//display//
z=0
for i=1:7
    z=z+y(i)*(10^(i-1))
end
disp(z)
disp('equivalent gray code is displayed')
