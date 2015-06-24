clear;
clc;

n=4;
m=4;
y=zeros(n,m);
z12=.25+(%i)*1.0;
z13=.20+(%i)*.8;
z14=.30+(%i)*1.2;
z23=.20+(%i)*.8;
z34=.15+(%i)*.6;
y(1,2)=1/z12;
y(1,3)=1/z13;
y(1,4)=1/z14;
y(2,3)=1/z23;
y(3,4)=1/z34;



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

ya=-.08*(%i);
yb=ya;
yc=ya;
yd=ya;
yk=ya;
yf=ya;
i=1;
j=2;
k=3;
l=4;
y(k,k)=y(k,k)+yf;
y(i,i)=y(i,i)+ya+yc+yb;
y(j,j)=y(j,j)+yd;
y(l,l)=y(l,l)+yk;
disp(y)







