clear
clc
n=11
disp('the first row denotes the boy no. ')
A(1,:)=[1 2 3 4 5 6 7 8 9 10 11];
disp('the second row denotes the marks in test I (x1) ')
A(2,:)=[23 20 19 21 18 20 18 17 23 16 19];
disp('the third row denotes the marks in test I (x2) ')
A(3,:)=[24 19 22 18 20 22 20 20 23 20 17];
disp('the fourth row denotes the difference of marks in two tests (d)')
for i=1:11
  A(4,i)=A(3,i)-A(2,i);
end
disp('the fifth row denotes the  (d-1) ')
for i=1:11
  A(5,i)=A(4,i)-1;
end
disp('the sixth row denotes the square of elements of fourth row')
for i=1:11
  A(6,i)=A(4,i)^2;
end
A
a=0;
disp('the sum of elements of fourth row= ')
for i=1:11
  a=a+A(4,i);
end
a
b=0;
disp('the sum of elements of sixth row= ')
for i=1:11
  b=b+A(6,i);
end
b
disp('standard deviation')
d=(b/(n-1))^0.5
t=(1-0)*(n)^0.5/2.24