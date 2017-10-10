//Eg-14.1
//pg-580

clear
clc
close()

//Note that the subscripts of the variables y have been increased by 1 since the subscript 0 is not possible in scilab!

deff('out = f1(in1,in2,in3,in4)','out = in3')

deff('out = f2(in1,in2,in3,in4)','out = in4')

deff('out = f3(in1,in2,in3,in4)','out = -in2^2*in3 - in2*cos(in1) + sin(in1)^2')

i = 1;
k1(1,1) = 0;
k2(1,1) = 0;
k3(1,1) = 0;
k4(1,1) = 0;

ti = 0;
tf = 30;
l = 1000;

t(1) = 0;

h = (tf-ti)/l;

n = 1 + (tf-ti)/h;

y1(1) = 1;
y2(1) = 0;
y3(1) = 0;

for(i = 2:n)
    t(i) = t(i-1) + h;
    k1(i,1) = f1(t(i),y1(i-1),y2(i-1),y3(i-1));
    k1(i,2) = f2(t(i),y1(i-1),y2(i-1),y3(i-1));
    k1(i,3) = f3(t(i),y1(i-1),y2(i-1),y3(i-1));
    
    y1(i) = y1(i-1) + k1(i,1)*h/2;
    y2(i) = y2(i-1) + k1(i,2)*h/2;
    y3(i) = y3(i-1) + k1(i,3)*h/2;
    k2(i,1) = f1(t(i),y1(i),y2(i),y3(i));
    k2(i,2) = f2(t(i),y1(i),y2(i),y3(i));
    k2(i,3) = f3(y1(i),y2(i),y3(i));
    
    y1(i) = y1(i-1) + k2(i,1)*h/2;
    y2(i) = y2(i-1) + k2(i,2)*h/2;
    y3(i) = y3(i-1) + k2(i,3)*h/2;
    k3(i,1) = f1(t(i),y1(i),y2(i),y3(i));
    k3(i,2) = f2(t(i),y1(i),y2(i),y3(i));
    k3(i,3) = f3(t(i),y1(i),y2(i),y3(i));
    
    y1(i) = y1(i-1) + k3(i,1)*h;
    y2(i) = y2(i-1) + k3(i,2)*h;
    y3(i) = y3(i-1) + k3(i,3)*h;
    k4(i,1) = f1(t(i),y1(i),y2(i),y3(i));
    k4(i,2) = f2(t(i),y1(i),y2(i),y3(i));
    k4(i,3) = f3(t(i),y1(i),y2(i),y3(i));
    
    y1(i) = y1(i-1) + 1/6*h*(k1(i,1) + 2*(k2(i,1)+k3(i,1)) + k4(i,1));
    y2(i) = y2(i-1) + 1/6*h*(k1(i,2) + 2*(k2(i,2)+k3(i,2)) + k4(i,2));
    y3(i) = y3(i-1) + 1/6*h*(k1(i,3) + 2*(k2(i,3)+k3(i,3)) + k4(i,3));
    
    Y1(i) = y1(i);
    Y2(i) = y2(i);
    Y3(i) = y3(i);
    
end

y1(1) = 1;
y2(1) = 1;
y3(1) = 1;


for(i = 2:n)
    t(i) = t(i-1) + h;
    k1(i,1) = f1(t(i),y1(i-1),y2(i-1),y3(i-1));
    k1(i,2) = f2(t(i),y1(i-1),y2(i-1),y3(i-1));
    k1(i,3) = f3(t(i),y1(i-1),y2(i-1),y3(i-1));
    
    y1(i) = y1(i-1) + k1(i,1)*h/2;
    y2(i) = y2(i-1) + k1(i,2)*h/2;
    y3(i) = y3(i-1) + k1(i,3)*h/2;
    k2(i,1) = f1(t(i),y1(i),y2(i),y3(i));
    k2(i,2) = f2(t(i),y1(i),y2(i),y3(i));
    k2(i,3) = f3(y1(i),y2(i),y3(i));
    
    y1(i) = y1(i-1) + k2(i,1)*h/2;
    y2(i) = y2(i-1) + k2(i,2)*h/2;
    y3(i) = y3(i-1) + k2(i,3)*h/2;
    k3(i,1) = f1(t(i),y1(i),y2(i),y3(i));
    k3(i,2) = f2(t(i),y1(i),y2(i),y3(i));
    k3(i,3) = f3(t(i),y1(i),y2(i),y3(i));
    
    y1(i) = y1(i-1) + k3(i,1)*h;
    y2(i) = y2(i-1) + k3(i,2)*h;
    y3(i) = y3(i-1) + k3(i,3)*h;
    k4(i,1) = f1(t(i),y1(i),y2(i),y3(i));
    k4(i,2) = f2(t(i),y1(i),y2(i),y3(i));
    k4(i,3) = f3(t(i),y1(i),y2(i),y3(i));
    
    y1(i) = y1(i-1) + 1/6*h*(k1(i,1) + 2*(k2(i,1)+k3(i,1)) + k4(i,1));
    y2(i) = y2(i-1) + 1/6*h*(k1(i,2) + 2*(k2(i,2)+k3(i,2)) + k4(i,2));
    y3(i) = y3(i-1) + 1/6*h*(k1(i,3) + 2*(k2(i,3)+k3(i,3)) + k4(i,3));
    
    
    
end

plot(t,Y1,t,y1)
xlabel('t')
ylabel('y1')
legend('1','2')

printf('1 is the curve obtained by using y2(0) = 0 and y3(0) = 0\n 2 is the curve obtained by using y2(0) = 1 and y3(0) = 1\n In both the cases y1(0) = 1\n')
//Note that the final answer of y1 at t = 30 is not the same as in text-book even after using the same algorithm the author has used. However in both cases the curves behave the same way as in the text book.