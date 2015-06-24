clear;
clc;

z12=.06+(%i)*.18;
z23=.08+(%i)*.24;
z13=.03+(%i)*.09;

n=3;
m=3;
y=zeros(n,m);
y(1,2)=1/z12;
y(1,3)=1/z13;
y(2,3)=1/z23;

for i=1:1:n
  for j=1:1:m
      y(j,i)=(y(i,j)+y(i,j))/2;
     
      end
end
Y=y;
for i=1:1:n
   for j=1:1:m
       if (i==j) then
           for k=1:1:n
           y(i,i)=y(i,i)+Y(j,k);
           end
       else
           y(i,j)=y(i,j)*(-1);
       end
   end
end

disp(y)

