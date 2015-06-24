clear
clc
disp('the first row of A denotes the scores of A  and that of B denotes that of B')
A(1,:)=[12 115 6 73 7 19 119 36 84 29];
B(1,:)=[47 12 16 42 4  51 37 48 13 0];
disp('the second row of A annd B denotes the corresponding deviation ')
for i=1:10
  A(2,i)= A(1,i)-51;
  B(2,i)=B(1,i)-51;
    end
disp('the third row of A and B denotes the corresponding deviation square')
for i=1:10
  A(3,i)= A(2,i)^2;
  B(3,i)=B(2,i)^2;
end
A
B
b=0;
disp('sum of second row elements of A=b=')
for i=1:10
  b=b+A(2,i);
  end
  disp(b)
  c=0;
disp('sum of second row elements of B=c=')
for i=1:10
  c=c+B(2,i);
  end
  disp(c)
  d=0;
disp('sum of third  row elements of A=d=')
for i=1:10
  d=d+A(3,i);
  end
  disp(d)
  e=0;
disp('sum of second row elements of B=e=')
for i=1:10
  e=e+B(3,i);
  end
  disp(e)
  disp('arithmetic mean of A=')
  f=51+b/10
  disp('standard deviation of A=')
  g=(d/10-(b/10)^2)^0.5
  disp('arithmetic mean of B=')
  h=51+c/10
  disp('standard deviation of A=')
  i=(e/10-(c/10)^2)^0.5
  disp('coefficient of variation of A=')
  (g/f)*100
  disp('coefficient of variation of B=')
  (i/h)*100