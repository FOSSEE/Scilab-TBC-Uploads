clear
clc
disp('the first row of A denotes the no. of students falling in the marks group starting from (5-10)...till (40-45)')
A(1,:)=[5 6 15 10 5 4 2 2];
disp('the second row denotes cumulative frequency (less than)')
A(2,1)=5;
for i=2:8
  A(2,i)=A(2,i-1)+A(1,i);
end
disp('the third row denotes cumulative frequency (more than)')
A(3,1)=49;
for i=2:8
  A(3,i)=A(3,i-1)-A(1,i-1);
end
disp(A)
