//Eg-7.3
//pg-328

clear
clc

//Using G and T in the place of greek alphabets 'gama' and 'tou'

G = [0 5 10 15 20];
T = [2.0 58.3 113.6 171.6 225.0];

printf('\nThe equation is of the form  : T = T0 + m*G\n')
Gavg = sum(G)/length(G);

Tavg = sum(T)/length(T);

// Using S() for indicating 'sigma of'

//using the equation     a = S((xi - xavg) * (yi - yavg))/S(xi-xavg)^2;

t = (G - Gavg).*(T - Tavg);

u = (G - Gavg).*(G - Gavg);

m = sum(t)/sum(u);

printf('    The value of m = %f\n',m);

T0 = Tavg - m*Gavg;

printf('    The value of T0 = %f\n',T0);

[r c] = size(G);


Tmodel = T0*ones(r,c) + m*G;
Texperiment = T;

printf('\n    i    Tiexperimental    Tmodel\n')
for(i = 1:c)
    printf('    %d       %f      %f\n',i-1,T(i),Tmodel(i))
end

p = sum((Tmodel - Tavg*ones(r,c)).*(Tmodel - Tavg*(ones(r,c))));

q = sum((T - Tavg)^2);
 
 r2 = p/q;
 
 //using the equation [24]
 printf('\nThe value of r^2 = %f\n',r2)
 