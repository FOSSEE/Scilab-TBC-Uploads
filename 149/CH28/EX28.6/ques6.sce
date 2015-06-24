//ques5
clear
clc
disp('Here c^2=1 , h=1/3 , k=1/36 ,  therefore t=(c^2)*k/(h^2)=1/4');
disp('So bendre-schmidits recurrence relation ie u(i)(j+1)=1/4(u(i-1)(j)+u(i+1)(j)+2u(i,j)');
disp('Now since u(0,t)=0=u(1,t) therefore  u(0,i)=0 and u(1,j)=0 and u(x,0)=sin(%pi)x');
c=1;
h=1/3;
k=1/36;
t=(c^2)*k/(h^2);
A=ones(9,9);

for i=1:9
  for j=1:9
  A(1,i)=0;
  A(2,i)=0;
  A(i,1)=sin(%pi/3*(i-1));
  
end
end
//A(2,1)=0.866;
//A(3,1)=0.866;
for i=2:8
  for j=2:8
    // A(i,j)=1/4*(A(i-1,j-1)+A(i+1,j-1)+2*A(i-1,j-1));
     A(i,j)=t*A(i-1,j-1)+t*A(i+1,j-1)+(1-2*t)*A(i-1,j-1);
end
end
for i=2:8
   j=2;
  disp(A(i,j));

end
