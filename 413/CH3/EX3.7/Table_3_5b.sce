clc
clear 
x=[0 0.5 1 1.5 2 2.5 3]
for i=1:7
y(1,i)=2*x(1,i).*x(1,i).*x(1,i)
end
for i=1:1:6
A(1,i)=(y(1,i+1)-y(1,i))/(x(1,i+1)-x(1,i)) 
end
for i=1:1:5
B(1,i)=(A(1,i+1)-A(1,i))/(x(1,i+2)-x(1,i)) 
end
for i=1:1:4
C(1,i)=(B(1,i+1)-B(1,i))/(x(1,i+3)-x(1,i)) 
end
for i=1:1:3
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
out4=[x(1,5),y(1,5), A(1,4), B(1,3), C(1,3) ]
disp(out4)
out5=[x(1,6),y(1,6), A(1,5), B(1,4) , C(1,4)]
disp(out5)
out6=[x(1,7),y(1,7), A(1,6), B(1,5) ]
disp(out6)
