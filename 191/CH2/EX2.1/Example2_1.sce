//Illutrates the effect of the partial pivoting using 3 significant //figure arithmetic with rounding
//first done without pivoting and then with partial pivoting 
clear;
close();
clc;
A=[0.610,1.23,1.72;1.02,2.15,-5.51;-4.34,11.2,-4.25];
B=[0.792;12.0;16.3];
C=[A,B];
format('v',10);
n=3;
for k=1:n-1
  for i=k+1:n
    c=C(i,k)/C(k,k);
    for j=k:n+1
      C(i,j)=C(i,j)-c*C(k,j);
    end
  end
end
x3=C(3,4)/C(3,3);
x2=(C(2,4)-C(2,3)*x3)/C(2,2);
x1=(C(1,4)-C(1,3)*x3-C(1,2)*x2)/C(1,1);
disp([x1,x2,x3],'Answers without partial pivoting : ')


C=[A,B];
format('v',5);
n=3;
for k=1:n-1
  m = max(abs(A(:,k)));
  for l=k:n
    if C(l,k)==m
      temp = C(l,:);
      C(l,:)= C(k,:);
      C(k,:)=temp;
      break;
    end
  end
  for i=k+1:n
    c=C(i,k)/C(k,k);
    for j=k:n+1
      C(i,j)=C(i,j)-c*C(k,j);
    end
  end
end
x3=C(3,4)/C(3,3);
x2=(C(2,4)-C(2,3)*x3)/C(2,2);
x1=(C(1,4)-C(1,3)*x3-C(1,2)*x2)/C(1,1);
disp([x1,x2,x3],'Answers using partial pivoting : ')