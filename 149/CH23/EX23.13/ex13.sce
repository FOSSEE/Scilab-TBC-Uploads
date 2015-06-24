clear
clc
disp('the first row of A denotes the corresponding I.R. of students ')
A(1,:)=[105 104 102 101 100 99 98 96 93 92];
disp('the second row denotes the corresponding deviation of I.R.')
for i=1:10
  A(2,i)=A(1,i)-99;
end
disp('the third row denotes the square of corresponding deviation of I.R. ')
for i=1:10
  A(3,i)=A(2,i)^2;
end
disp('the fourth row denotes the corresponding  E.R. of students ')
  A(4,:)=[101 103 100 98 95 96 104 92 97 94];
disp('the fifth row denotes the corresponding deviation of E.R. ')
for i=1:10
  A(5,i)=A(4,i)-98;
end
disp('the sixth row denotes the square of corresponding deviation of E.R. ')
for i=1:10
  A(6,i)=A(5,i)^2;
end
disp('the seventh row denotes the product of the two corresponding deviations ')
for i=1:10
  A(7,i)=A(2,i)*A(5,i);
end
A
a=0;
disp('the sum of elements of  first row=a')
for i=1:10
  a=a+A(1,i);
end
a
b=0;
disp('the sum of elements of  second row=b')
for i=1:10
  b=b+A(2,i);
end
b
c=0;
disp('the sum of elements of  third  row=c')
for i=1:10
  c=c+A(3,i);
end
c
d=0;
disp('the sum of elements of  fourth row=d')
for i=1:10
  d=d+A(4,i);
end
d
e=0;
disp('the sum of elements of  fifth row=e')
for i=1:10
  e=e+A(5,i);
end
e
f=0;
disp('the sum of elements of  sixth row=d')
for i=1:10
  f=f+A(6,i);
end
f
g=0;
disp('the sum of elements of  seventh row=d')
for i=1:10
  g=g+A(7,i);
end
g
disp('coefficient of correlation=')
g/(c*f)^0.5