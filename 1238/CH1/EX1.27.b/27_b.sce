//gray code to binary conversion//
//Example 27.b//
//gray code to binary//
clc
//clears the console//
clear
//clears all existing variables//
a=111011
for i=1:6
    x(i)=modulo(a,10)
    a=a/10
    a=floor(a)
end
y(6)=x(6)
k=5
while(k>0)
  if (bitand(y(k+1),x(k))==1) then
    a=bitand(y(k+1),x(k))
    y(k)=bitcmp(a,1)
else
    y(k)=bitor(y(k+1),x(k))
    end
    k=k-1
end           
z=0
for i=1:6
    z=z+y(i)*(10^(i-1))
end
disp(z)
disp('equivalent binary code is displayed')
