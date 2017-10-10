//Eg-13.5
//pg-530

clear
clc

y(1) = 1;
x(1) = 0;
h = 0.1;

deff('out = func(in1,in2)','out = in1^0.5 + in2^0.5')

for(i = 2:11)
    
    x(i) = 0.1+(i-2)*0.1;
    
end

for(i = 1:10)
    yb(i+1) = y(i) + h*func(x(i),y(i));
    y(i+1) = y(i) + h/2*(func(x(i),y(i)) + func(x(i+1),yb(i+1)));
    bb(i+1) = y(i) + h/2*func(x(i),y(i));
    b(i+1) = y(i) + h*func(x(i)+h/2,bb(i+1));
end



printf('   x         yMP        yPC\n')

for(i = 2:11)
    printf('%f    %f    %f\n',x(i),b(i),y(i))
end

printf('The third column presents the results obtained from the method used in Eg-13_4')