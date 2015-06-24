clc
disp('the first row of A represents the mid values of wage classes having interval of 8 in each class=x')
A(1,:)=[8.5 16.5 24.5 32.5 40.5 48.5 56.5 64.5 72.5]
disp('the second row denotes the no. of men or in other words frequency=f')
A(2,:)=[2 24 21 18 5 3 5 8 2]
disp('third row denotes f*x')
for i=1:9
  A(3,i)=A(1,i)*A(2,i);
end
disp('fourth row denotes d=(x-32.5)/8')
for i=1:9
  A(4,i)=(A(1,i)-32.5)/8
end
disp('fifth row denotes f*d')
for i=1:9
  A(5,i)=A(4,i)*A(2,i);
end
disp('sixth row denotes f*(d^2)  ')
for i=1:9
  A(6,i)=A(4,i)^2*A(2,i);
end
A
b=0;
disp('sum of all elements of sixth row=')
for i=1:9
  b+=A(6,i)
end
disp(b)
f=0;
disp('sum of all elements of second row=')
for i=1:9
  f+=A(2,i)
end
disp(f)
disp('mean=')
b/f
d=0;
disp('sum of all elements of fifth row=')
for i=1:9
  d+=A(5,i)
end
disp('mean wage=')
32.5+(8*d/f)
disp('standard deviation=')
8*(b/f-(d/f)^2)