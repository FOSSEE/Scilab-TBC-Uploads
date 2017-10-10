//Eg-13.11
//pg-550

clear
clc

deff('out = func(in1,in2)','out = -2*in2')

for(j = 1:3)
    
    x(1) = 0;
    y(1,j) = 1;
    yb(1,j) = 0;
    
end


h(1) = 0.43;
h(2) = 0.3;
h(3) = 0.03;

z(1) = exp(-2*x(1));

for(i = 2:11)
    
    x(i) = 0.1+(i-2)*0.1;
    z(i+1) = exp(-2*x(i));
end

for(j = 1:3)
    
    
    for(i = 1:10)
        yb(i+1,j) = y(i) + h(j)*func(x(i),y(i,j));
        y(i+1,j) = y(i) + h(j)/2*(func(x(i),y(i,j)) + func(x(i+1),yb(i+1,j)));
    end


end

printf('   x           h1         h2          h3         exact\n')

for(i = 2:11)
    printf('%f    %f    %f    %f    %f\n',x(i),y(i,1),y(i,2),y(i,3),z(i+1))
end

for(i = 1:10)
    a(i) = x(i+1);
    b(i) = y(i+1,1);
    c(i) = y(i+1,2);
    d(i) = y(i+1,3);
    e(i) = z(i+2);
end

clf()
//plot(a,[b c d e])
plot(a,b,'s')
plot(a,c,'o')
plot(a,d,'d')
plot(a,e,'-')
legend('h = 0.43','h = 0.3','h = 0.03','analytical')