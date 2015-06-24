clc
disp("the soln of eg 10.3-->Red-Black Gauss-Seidel Method");
for j=1:5,tn(j,1)=400,end                       //defining conditions
for j=2:4,tn(1,j)=20,tn(5,j)=20,tn(j,5)=20, end
for i=1:9,e(i)=1
end
for i=2:4,j=2:4,tn(i,j)=60
end
t1=1e-6
while e(1)>t1&e(2)>t1&e(3)>t1&e(4)>t1&e(5)>t1 &e(6)>t1& e(7)>t1& e(8)>t1 & e(9)>t1 do for i=2:4,j=2:4,t(i,j)=tn(i,j),end
//using red-black gauss-seidel method
for i=2:4,j=2:4,tn(i,j)=(tn(i+1,j)+tn(i-1,j)+tn(i,j+1)+tn(i,j-1))/4, end
//now getting the absolute difference of the 9 variables
e(1)=abs(t(2,2)-tn(2,2)),e(2)=abs(t(2,3)-tn(2,3)),e(3)=abs(t(2,4)-tn(2,4)),e(4)=abs(t(3,2)-tn(3,2)),e(5)=abs(t(3,3)-tn(3,3)),e(6)=abs(t(3,4)-tn(3,4)),e(7)=abs(t(4,2)-tn(4,2)),e(8)=abs(t(4,3)-tn(4,3)),e(9)=abs(t(4,4)-tn(4,4)),
end
//now defining positions of the various nodes according to red black combination
R1=t(2,4),R2=t(4,4),R3=t(3,3),R4=t(2,2),R5=t(2,4),B1=t(4,3),B2=t(3,2),B3=t(3,4),B4=t(2,3)
disp(R5,R4,R3,R2,R1,"the value of RED points respectively is");
disp(B4,B3,B2,B1,"the value of BLUE points respectively is");
