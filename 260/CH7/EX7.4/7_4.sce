//Eg-7.4
//pg-336

clear
clc


RH = [52 47 66 70 59 73 69];
MC = [13 9 17 20 15 21 20];

x = RH;
y = MC;

printf('\nAssuming that the equation is of the form  : MC = c + m*RH\n')

xavg = sum(x)/length(x);

yavg = sum(y)/length(y);

// Using S() for indicating 'sigma of'

//using the equation     a = S((xi - xavg) * (yi - yavg))/S(xi-xavg)^2;

t = (x - xavg).*(y - yavg);

u = (x - xavg).*(x - xavg);

m = sum(t)/sum(u);

printf('    The value of m = %f\n',m);

c = yavg - m*xavg;

printf('    The value of c = %f\n',c);

[rx cx] = size(x);


ymodel = c*ones(rx,cx) + m*x;
yexperiment = y;

printf('\n    i    MCiexperimental    MCmodel\n')
for(i = 1:cx)
    printf('    %d       %f      %f\n',i-1,y(i),ymodel(i))
end

p = sum((ymodel - yavg*ones(rx,cx)).*(ymodel - yavg*(ones(rx,cx))));

q = sum((y - yavg)^2);
 
 r2 = p/q;
 
 //using the equation [24]
 printf('\nThe value of r^2 = %f\n',r2)
 