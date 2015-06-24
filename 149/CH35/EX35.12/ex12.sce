clear
clc
n=9
disp('first of row denotes the different values of sample ')
A(1,:)=[45 47 50 52 48 47 49 53 51];
disp('the second row denotes the corresponding deviation ')
for i=1:9
  A(2,i)=A(1,i)-48;
end
disp('the third row denotes the corresponding square of deviation')
for i=1:9
  A(3,i)=A(2,i)^2;
end
disp('the sum of second row elements =')
a=0;
for i=1:9
  a=a+A(2,i);
end
a
disp('the sum of third row elements ")
b=0;
for i=1:9
  b=b+A(3,i);
end
b
disp('let m be the mean ')
m=48+a/n
disp('let d be the standard deviation ')
d=((b/n)-(a/n)^2)^0.5
t=(m-47.5)*(n-1)^0.5/d