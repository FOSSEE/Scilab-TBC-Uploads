clc
clear 
x=[0 0.1 0.2 0.3 0.4 ]
y(1,1)=-1
for i=1:5
    B(1,i)=(-2*x(1,i)-y(1,i))
    C(1,i)=0.1*B(1,i)
    y(1,i+1)=y(1,i)+C(1,i)
    
end
for i=1:5
T=[x(1,i), y(1,i), B(1,i),C(1,i)]
disp(T)
end