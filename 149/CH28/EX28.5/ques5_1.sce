//ques5
clear
clc
disp('Here c^2=4 , h=1 , k=1/8 ,  therefore alpha=(c^2)*k/(h^2)');
disp('Using bendre-schmidits recurrence relation ie u(i)(j+1)=t*u(i-1)(j)+t*u(i+1)(j)+(1-2t)*u(i,j)');
disp('Now since u(0,t)=0=u(8,t) therefore  u(0,i)=0 and u(8,j)=0 and u(x,0)=4x-1/2x^2');
c=2;
h=1;
k=1/8;
t=(c^2)*k/(h^2);
A=ones(9,9);

for i=1:9
  for j=1:9
  A(1,i)=0;
  A(9,i)=0;
  A(i,1)=4*(i-1)-1/2*(i-1)^2;
  
end
end
//i=2;
//j=2;
for i=2:8
  for j=2:7
 // A(i,j)=1/2*(A(i-1,j-1)+A(i+1,j-1));
 A(i,j)=t*A(i-1,j-1)+t*A(i+1,j-1)+(1-2*t)*A(i-1,j-1);
 end
end
for i=2:8
   j=2;
  disp(A(i,j));

end
