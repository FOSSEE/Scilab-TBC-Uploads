//Eg-13.9
//pg-546

clear
clc
close()

//Note that the subscripts of the variables y have been increased by 1 since the subscript 0 is not possible in scilab!

deff('out = f1(in1,in2,in3)','out = -0.08*in1^0.5 - 2*in1^0.2*in2')

deff('out = f2(in1,in2,in3)','out = -3.5*10^-6*in1^0.2*in2 + 1.6*10^-6*in3^0.3')

deff('out = f3(in1,in2,in3)','out = 2*in1^0.2*in2 - 0.16*in3^0.3')

i = 1;
k1(1,1) = 0;
k2(1,1) = 0;
k3(1,1) = 0;
k4(1,1) = 0;


y1(1) = 0.95;
y2(1) = 0.05;
y3(1) = 0;

ti = 0;
tf = 7;
l = 1000;

t(1) = 0;

h = (tf-ti)/l;

n = 1 + (tf-ti)/h;

for(i = 2:n)
    t(i) = t(i-1) + h;
    k1(i,1) = f1(y1(i-1),y2(i-1),y3(i-1));
    k1(i,2) = f2(y1(i-1),y2(i-1),y3(i-1));
    k1(i,3) = f3(y1(i-1),y2(i-1),y3(i-1));
    
    y1(i) = y1(i-1) + k1(i,1)*h/2;
    y2(i) = y2(i-1) + k1(i,2)*h/2;
    y3(i) = y3(i-1) + k1(i,3)*h/2;
    k2(i,1) = f1(y1(i),y2(i),y3(i));
    k2(i,2) = f2(y1(i),y2(i),y3(i));
    k2(i,3) = f3(y1(i),y2(i),y3(i));
    
    y1(i) = y1(i-1) + k2(i,1)*h/2;
    y2(i) = y2(i-1) + k2(i,2)*h/2;
    y3(i) = y3(i-1) + k2(i,3)*h/2;
    k3(i,1) = f1(y1(i),y2(i),y3(i));
    k3(i,2) = f2(y1(i),y2(i),y3(i));
    k3(i,3) = f3(y1(i),y2(i),y3(i));
    
    y1(i) = y1(i-1) + k3(i,1)*h;
    y2(i) = y2(i-1) + k3(i,2)*h;
    y3(i) = y3(i-1) + k3(i,3)*h;
    k4(i,1) = f1(y1(i),y2(i),y3(i));
    k4(i,2) = f2(y1(i),y2(i),y3(i));
    k4(i,3) = f3(y1(i),y2(i),y3(i));
    
    y1(i) = y1(i-1) + 1/6*h*(k1(i,1) + 2*(k2(i,1)+k3(i,1)) + k4(i,1));
    y2(i) = y2(i-1) + 1/6*h*(k1(i,2) + 2*(k2(i,2)+k3(i,2)) + k4(i,2));
    y3(i) = y3(i-1) + 1/6*h*(k1(i,3) + 2*(k2(i,3)+k3(i,3)) + k4(i,3));
    
    
    
end
printf('   t          y1          y2          y3\n')
for(i = 1:100:n)
    printf('%f    %f    %f    %f\n',t(i),y1(i),y2(i),y3(i))
end

plot(t,y1,t,y2,t,y3)
xlabel('t')
ylabel('y1,y2,y3')
legend('y1','y2','y3')

//note that the graph shown on the text book uses y1,y2 from o to 1 and y3 from 0 to 0.1