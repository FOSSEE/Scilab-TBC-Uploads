clc
disp('the first row of A represents the mid values of weekly earnings having interval of 2 in each class=x')
A(1,:)=[11 13 15 17 19 21 23 25 27 29 31 33 35 37 39 41]
disp('the second row denotes the no. of employees or in other words frequency=f')
A(2,:)=[3 6 10 15 24 42 75 90 79 55 36 26 19 13 9 7]
disp('third row denotes f*x')
for i=1:16
  A(3,i)=A(1,i)*A(2,i);
end
disp('fourth row denotes u=(x-25)/2')
for i=1:16
  A(4,i)=(A(1,i)-25)/2
end
disp('fifth row denotes f*x')
for i=1:16
  A(5,i)=A(4,i)*A(2,i);
end
A
b=0;
disp('sum of all elements of third row=')
for i=1:16
  b+=A(3,i)
end
disp(b)
f=0;
disp('sum of all elements of second row=')
for i=1:16
  f+=A(2,i)
end
disp(f)
disp('mean=')
b/f
d=0;
disp('sum of all elements of fifth row=')
for i=1:16
  d+=A(5,i)
end
disp('mean  by step deviation method=')
25+(2*d/f)