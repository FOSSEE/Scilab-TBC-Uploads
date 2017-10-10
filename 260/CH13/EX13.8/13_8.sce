//Eg-13.8
//pg-542

clear
clc
close()
x(1) = 0;
x_ending = 200;
l = 1000;    //no. of divisions
h = (x_ending-x(1))/l;

y5(1) = 0.01;
y4(1) = 0.01;
y(1) = 0.01;
des = 10^(-5);
deff('out = F(in1,in2)','out = in2^2*(1-in2)')
//h = 0.5;
for(i = 1:150)

k1 = h*F(x(i),y(i));
k2 = h*F(x(i) + 1/5*h,y(i)+1/5*k1);
k3 = h*F(x(i) + 3/10*h,y(i)+3/40*k1 + 9/40*k2);
k4 = h*F(x(i)+3/5*h,y(i) + 3/10*k1 - 9/10*k2 + 6/5*k3);
k5 = h*F(x(i)+h, y(i - 11/54*k1 + 5/2*k2 - 70/27*k3 + 35/27*k4));
k6 = h*F(x(i)+7/8*h, y(i) + 1631/55296*k1 + 175/512*k2 + 575/13824*k3 + 44275/110592*k4 + 253/4096*k5);

y5(i+1) = y(i) + (37/378*k1 + 250/621*k3 + 125/594*k4 + 512/1771*k6);

y4(i+1) = y(i) + (2825/27648*k1 + 18575/48384*k3 + 13525/55296*k4 + 277/14336*k5 + 1/4*k6);

err = abs(y5(i+1) - y4(i+1));

if(err > des)
    n = 0.25;
elseif(err < des)
    n = 0.2;
end

h = h*(abs(des/err))^n;

y(i+1) = y(i) + (37/378*k1 + 250/621*k3 + 125/594*k4 + 512/1771*k6);

x(i+1) = x(i)+h;

end 

printf('The values calculated using RK Fehlberg method are tabulated below\n')
printf('    x          y\n')
for(i = 1:150)
    printf('%f    %f\n',x(i),y(i))
end

plot(x,y)
xlabel('t')
ylabel('y')

//There can be a difference in values this code gives and the code in the textbook gives because the author didn't mention the initial value of h that was used.Final value of x has been taken as 200 and 1000 divisions among will give h = (200-0)/1000.