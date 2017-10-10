//Eg-13.3
//pg-525

clear
clc
close()
x(1) = 0;
yb(1) = 0;
y(1) = 1;    //Initial condition
h = 0.1;
deff('out = func(in1,in2)','out = in1^2*in2')

//Taking the exact values from the previous problem
z(1) = exp(x(1)^3/3);

for(i = 2:11)
    
    x(i) = 0.1+(i-2)*0.1;
    z(i+1) = exp(x(i)^3/3);
end

for(i = 1:10)
    yb(i+1) = y(i) + h*func(x(i),y(i));
    y(i+1) = y(i) + h/2*(func(x(i),y(i)) + func(x(i+1),yb(i+1)));
end



printf('   x          yPc        yExact\n')

for(i = 2:11)
    printf('%f    %f    %f\n',x(i),y(i),z(i+1))
end

for(k = 1:10)
    a(k) = x(k+1);
    b(k) = y(k+1);
    c(k) = z(k+2);
end


clf()
//plot(a,[b c])
plot(a,b,'-')

plot(a,c,'.')
legend('Exact','Euler')
xlabel('x')
ylabel('y')
printf('\n\nA comparison of Eulers method, the predictor-corrector method, and the exact solution\nare presented in the image. As expected, the predictor-corrector method produces a more\naccurate solution than the simple Eulers method.\n')