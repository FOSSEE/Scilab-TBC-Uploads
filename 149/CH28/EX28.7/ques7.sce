//ques7
clear
clc
disp('Here c^2=16 , taking h=1 , finding k such that c^2t^2=1 ');
disp('So bendre-schmidits recurrence relation ie u(i)(j+1)=(16t^2(u(i-1)(j)+u(i+1)(j))+2(1-16*t^2u(i,j)-u(i)(j-1)');
disp('Now since u(0,t)=0=u(5,t) therefore  u(0,i)=0 and u(5,j)=0 and u(x,0)=x^2(5-x)');
c=4;
h=1;
k=(h/c);
t=k/h;
A=zeros(6,6);
disp('Also from 1st derivative (u(i)(j+1)-u(i,j-1))/2k=g(x)  and g(x)=0 in this case');
disp('So if j=0 this gives u(i)(1)=1/2*(u(i-1)(0)+u(i+1)(0))')
for i=0:5
  for j=2:9
  A(1,i+1)=0;
  A(6,i+1)=0;
  A(i+1,1)=(i)^2*(5-i);
 
    
end
end
for i=1:4
    A(i+1,2)=1/2*(A(i,1)+A(i+2,1));
  
  end
  for i=3:5
  for j=3:5
    
    A(i-1,j)=(c*t)^2*(A(i-2,j-1)+A(i,j-1))+2*(1-(c*t)^2)*A(i-1,j-1)-A(i-1,j-2);
end
end

for i=1:5
for j=1:5
  disp(A(i,j));
end
end
