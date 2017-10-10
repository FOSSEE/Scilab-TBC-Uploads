clc
clear
x=[1.10 2.00 3.50  5.00 7.10];
for i=1:5
y(1,i)=x(1,i).*x(1,i).*exp(-x(1,i)/2)
end
for i=1:1:4
A(1,i)=(y(1,i+1)-y(1,i))/(x(1,i+1)-x(1,i)) 
end
for i=1:1:3
B(1,i)=(A(1,i+1)-A(1,i))/(x(1,i+2)-x(1,i)) 
end
for i=1:1:2
C(1,i)=(B(1,i+1)-B(1,i))/(x(1,i+3)-x(1,i)) 
end
for i=1:1:1
D(1,i)=(C(1,i+1)-C(1,i))/(x(1,i+4)-x(1,i)) 
end
out=[x(1,1),y(1,1) ]
disp(out)
out1=[x(1,2),y(1,2), A(1,1) ]
disp(out1)
out2=[x(1,3),y(1,3), A(1,2), B(1,1),C(1,1),D(1,1) ]
disp(out2)
out3=[x(1,4),y(1,4), A(1,3), B(1,2),C(1,2) ]
disp(out3)
out4=[x(1,5),y(1,5), A(1,4), B(1,3) ]
disp(out4)