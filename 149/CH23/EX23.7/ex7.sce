clear
clc
disp('the first row denotes the size of item')
A(1,:)=[6 7 8 9 10 11 12];
disp('the second row denotes the corresponding frequency (f)')
A(2,:)=[3 6 9 13 8 5 4];
disp('the third row denotesthe corresponding deviation (d)')
A(3,:)=[-3 -2 -1 0 1 2 3];
disp('the fourth row denotes the corresponding f*d ')
for i=1:7
  A(4,i)=A(2,i)*A(3,i);
end
disp('the fifth row denotes the corresponding f*d^2')
for i=1:7
  A(5,i)=A(2,i)*(A(3,i)^2);
end
A
b=0;
disp('sum of fourth row elements=')
for i=1:7
  b=b+A(4,i);
end
disp(b)
c=0
disp('sum of fifth row elements=')
for i=1:7
  c=c+A(5,i);
end
disp(c)
d=0;
disp('sum of all frequencies=')
for i=1:7
  d=d+A(2,i);
end
disp(d)
disp('mean=9+b/d=')
9+b/d
disp('standard deviation=(c/d)^0.5')
(c/d)^0.5