clear;
clc;

n=5;
m=5;
y=zeros(n,m);
z12=(%i)*.2;
z23=(%i)*.25;
z34=(%i)*.3
z45=(%i)*.25;
z14=(%i)*.5;
z15=(%i)*.2;
y(1,2)=1/z12;
y(2,3)=1/z23;
y(3,4)=1/z34;
y(4,5)=1/z45;
y(1,4)=1/z14;
y(1,5)=1/z15;


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
